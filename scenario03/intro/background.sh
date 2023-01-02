#!/bin/bash

echo -e "
  _  __     _                          _            
 | |/ /    | |                        | |           
 | ' /_   _| |__   ___ _ __ _ __   ___| |_ ___  ___ 
 |  <| | | | '_ \ / _ \ '__| '_ \ / _ \ __/ _ \/ __|
 | . \ |_| | |_) |  __/ |  | | | |  __/ ||  __/\__  
 |_|\_\__,_|_.__/ \___|_|  |_| |_|\___|\__\___||___/
                   | |                              
   __ _  ___   __ _| |_                             
  / _ | __|                            
 | (_| | (_) | (_| | |_                             
  \__, |\___/ \__,_|\__|                            
   __/ |                                            
  |___/ 

  Waiting for background-script to finish
" > kubegoat

# Apply SSRF deployment https://github.com/madhuakula/kubernetes-goat/blob/master/access-kubernetes-goat.sh#L27
APP_NAME="internal-proxy"
APP_PORT=3000
git clone https://github.com/madhuakula/kubernetes-goat.git
kubectl apply -f kubernetes-goat/scenarios/$APP_NAME/deployment.yaml

# Apply extra infra
helm install metadata-db kubernetes-goat/scenarios/metadata-db/
kubectl patch deployment $APP_NAME-deployment --type json -p='[{"op": "replace", "path": "/spec/template/spec/containers/0/resources/limits/memory", "value":"500Mi"}]'
rm -rf kubernetes-goat

sleep 10

cat <<EOF > expose-service.sh
#!/bin/bash

POD_NAME=\$(kubectl get pods --all-namespaces -l "app=$APP_NAME" -o jsonpath="{.items[0].metadata.name}")
NAMESPACE=\$(kubectl get pods --all-namespaces -l "app=$APP_NAME" -o jsonpath="{.items[0].metadata.namespace}")
kubectl port-forward \$POD_NAME -n \$NAMESPACE --address 0.0.0.0 1234:$APP_PORT > /dev/null 2>&1 &
echo "
Setup complete.
Hello and welcome to this scenario!
"
EOF

echo done > /tmp/background0