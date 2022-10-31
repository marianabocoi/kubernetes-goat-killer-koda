#!/bin/bash

git clone https://github.com/madhuakula/kubernetes-goat.git

cd kubernetes-goat
bash setup-kubernetes-goat.sh
sleep 3

echo done > /tmp/background0
