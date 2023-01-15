### ⚡️ The story

This scenario is mainly to perform the review of the Kubernetes Cluster by scanning the live Kubernetes cluster and reporting potential issues with deployed resources and configurations.

:::info

To get started with this scenario you can run the following command to start the `hacker-container` with cluster administrator privileges (as the tiller service account already has that)

```bash
kubectl run -n kube-system --serviceaccount=tiller --rm --restart=Never -it --image=madhuakula/hacker-container -- bash
```

:::