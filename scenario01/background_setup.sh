#!/bin/bash
pip install git-dumper
git clone https://github.com/madhuakula/kubernetes-goat.git

cd kubernetes-goat
bash setup-kubernetes-goat.sh
sleep 1
echo done > /tmp/background0