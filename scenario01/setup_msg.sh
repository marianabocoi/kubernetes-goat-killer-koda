echo waiting for init-background-script to finish
while [ ! -f /tmp/background0 ]; do sleep 1; done
cd kubernetes-goat;bash access-kubernetes-goat.sh; \
export POD_NAME=$(kubectl get pods --namespace default -l "app=build-code" -o jsonpath="{.items[0].metadata.name}"); \
kubectl port-forward $POD_NAME --address 0.0.0.0 1230:3000 > /dev/null 2>&1 &
cd
echo Hello and welcome to this scenario!