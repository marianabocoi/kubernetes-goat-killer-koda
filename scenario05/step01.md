### ⚡️ The story

This scenario is mainly to perform the Docker CIS benchmarks analysis on top of Kubernetes nodes to identify the possible security vulnerabilities.

* To get started with this scenario you can either access the node and perform by following docker bench security or run the following command to deploy docker bench security as a [DaemonSet](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/) in the Kubernetes cluster

:::info

* To get started with the scenario, you can deploy the Docker CIS benchmarks DaemonSet using the following command

```bash
kubectl apply -f scenarios/docker-bench-security/deployment.yaml
```

* To exec into the pod, we can run the following command. Make sure to replace the pod name

```bash
kubectl exec -it docker-bench-security-xxxxx -- sh
```

:::
