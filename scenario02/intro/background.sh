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

# Apply DIND deployment https://github.com/madhuakula/kubernetes-goat/blob/master/access-kubernetes-goat.sh#L22
APP_NAME="health-check"
APP_PORT=80
git clone https://github.com/madhuakula/kubernetes-goat.git
kubectl apply -f kubernetes-goat/scenarios/$APP_NAME/deployment.yaml

# Apply extra infra
docker pull hello-world@sha256:f54a58bc1aac5ea1a25d796ae155dc228b3f0e11d046ae276b39c4bf2f13d8c4
kubectl label nodes controlplane type=docker
kubectl patch deployment $APP_NAME-deployment -p '{"spec": {"template": {"spec": {"nodeSelector": {"type": "docker"}}}}}'
kubectl patch deployment $APP_NAME-deployment -p '{"spec": {"template": {"spec": {"tolerations": [{"key":"node-role.kubernetes.io/control-plane","effect":"NoSchedule","operator": "Exists"}]}}}}'

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