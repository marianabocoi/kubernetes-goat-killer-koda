#!/bin/bash

git clone https://github.com/madhuakula/kubernetes-goat.git

cd kubernetes-goat
bash setup-kubernetes-goat.sh
sleep 3
bash access-kubernetes-goat.sh
