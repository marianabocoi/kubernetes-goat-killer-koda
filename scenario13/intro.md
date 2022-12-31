# DoS the memory/CPU resources

## Scenario Information

There is no specification of resources in the Kubernetes manifests and not applied limit ranges for the containers. As an attacker, we can consume all the resources where the pod/deployment running and starve other resources and cause a DoS for the environment.

* To get started with the scenario, navigate to [http://127.0.0.1:1236](http://127.0.0.1:1236)

![Scenario 13 Welcome](images/sc-13-1.png)

See [here](https://madhuakula.com/kubernetes-goat/docs/scenarios/scenario-13) for the complete non-interactive Kubernetes Goat - Scenario 13 write-up.