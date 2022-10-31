#!/bin/bash

set -x # to test stderr output in /var/log/killercoda

git clone https://github.com/madhuakula/kubernetes-goat.git

cd kubernetes-goat
bash setup-kubernetes-goat.sh
bash access-kubernetes-goat.sh
