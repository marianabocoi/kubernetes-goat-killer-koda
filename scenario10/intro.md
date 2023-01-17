# ⎈ Analysing crypto miner container

## 🙌 Overview

It's commonly seen that most of the container users download the images from the public container registries like Docker Hub and others. We have seen a ton of hacks and compromises of these and also attackers abusing these by uploading the container images which has crypto miners to use the cluster resources. In this scenario, we see one simple and very common way of exploiting these vulnerabilities in the public container images.

By the end of the scenario, we will understand and learn the following

1. You will learn to analyze the container image
2. Understanding Kubernetes jobs and working with them
3. Learning about container image manifests and the backdoors and crypto miners

See [here](https://madhuakula.com/kubernetes-goat/docs/scenarios/scenario-10) for the complete non-interactive Kubernetes Goat - Scenario 01 write-up.