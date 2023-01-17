#!/bin/bash
git clone https://github.com/madhuakula/kubernetes-goat.git
kubectl apply -f kubernetes-goat/scenarios/hunger-check/deployment.yaml
# git clone https://github.com/madhuakula/hacker-container.git
# docker build ~/hacker-container 
docker pull madhuakula/hacker-container
helm install metadata-db kubernetes-goat/scenarios/metadata-db/
sleep 15

echo "  _  __     _                          _             " >>kubegoat
echo " | |/ /    | |                        | |            " >>kubegoat
echo " | ' /_   _| |__   ___ _ __ _ __   ___| |_ ___  ___  " >>kubegoat
echo " |  <| | | | '_ \ / _ \ '__| '_ \ / _ \ __/ _ \/ __| " >>kubegoat
echo " | . \ |_| | |_) |  __/ |  | | | |  __/ ||  __/\__ \ " >>kubegoat
echo " |_|\_\__,_|_.__/ \___|_|  |_| |_|\___|\__\___||___/ " >>kubegoat
echo "                   | |                               " >>kubegoat
echo "   __ _  ___   __ _| |_                              " >>kubegoat
echo '  / _` |/ _ \ / _` | __|                             ' >>kubegoat
echo " | (_| | (_) | (_| | |_                              " >>kubegoat
echo "  \__, |\___/ \__,_|\__|                             " >>kubegoat
echo "   __/ |                                             " >>kubegoat
echo "  |___/  " >>kubegoat


echo 'export POD_NAME=$(kubectl get pods --namespace big-monolith -l "app=hunger-check" -o jsonpath="{.items[0].metadata.name}")'> startup.sh
echo 'kubectl port-forward $POD_NAME --address 0.0.0.0 1236:8080 > /dev/null 2>&1 &'>> startup.sh
echo 'cat ~/kubegoat'>> startup.sh
echo 'echo ==================================='>> startup.sh
echo 'echo Hello and welcome to this scenario!'>> startup.sh
echo 'echo ==================================='>> startup.sh

echo done > /tmp/background0