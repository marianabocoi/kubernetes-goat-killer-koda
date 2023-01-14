# DoS the memory/CPU resources

## 🙌 Overview

Availability is one of the triads in CIA. One of the core problems solved by Kubernetes is the management of the resources like autoscaling, rollouts, etc. In this scenario, we will see how attackers can leverage and gain access to more resources or cause an impact on the availability of the resources by performing the DoS (Denial of Service) if there were no resource management configurations implemented on the cluster resources like memory and CPU requests and limits.


By the end of the scenario, we will understand and learn the following

1. Learn to perform the DoS on computing and memory resources using `stress-ng`
2. Understand the Kubernetes resources management for pods and containers
3. Explore the Kubernetes resource monitoring using the metrics and information 

See [here](https://madhuakula.com/kubernetes-goat/docs/scenarios/scenario-13) for the complete non-interactive Kubernetes Goat - Scenario 13 write-up.