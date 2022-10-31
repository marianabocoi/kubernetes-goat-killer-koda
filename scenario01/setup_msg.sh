echo waiting for init-background-script to finish
while [ ! -f /tmp/background0 ]; do sleep 1; done
cd kubernetes-goat;bash access-kubernetes-goat.sh
echo Hello and welcome to this scenario!