#!/bin/bash
pip install git-dumper
git clone https://github.com/madhuakula/kubernetes-goat.git

kubectl apply -f kubernetes-goat/scenarios/build-code/deployment.yaml
sleep 15
export POD_NAME=$(kubectl get pods --namespace default -l "app=build-code" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward $POD_NAME --address 0.0.0.0 1230:3000 > /dev/null 2>&1 &
echo done > /tmp/background0