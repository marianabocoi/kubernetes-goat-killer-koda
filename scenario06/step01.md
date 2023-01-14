### ⚡️ The story

This scenario is mainly to perform the Kubernetes CIS benchmarks analysis on top of Kubernetes nodes and cluster resources to identify the possible security vulnerabilities.

* To get started with this scenario you can either access the node and perform by following kube-bench security or run the following command to deploy kube-bench as [Kubernetes job](https://kubernetes.io/docs/concepts/workloads/controllers/job/)

:::info

* To get started with the scenario, you can deploy the Kubernetes CIS benchmarks job using the following commands

```bash
kubectl apply -f scenarios/kube-bench-security/node-job.yaml
```

```bash
kubectl apply -f scenarios/kube-bench-security/master-job.yaml
```

:::
