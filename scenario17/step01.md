### ⚡️ The story

This scenario is mainly to perform the audit of the Kubernetes Cluster for various security concerns using the open-source tool `kubeaudit` by Shopify.

:::info

To get started with this scenario you can run the following command to start the `hacker-container` with cluster administrator privileges (as the tiller service account already has that)

```bash
kubectl run -n kube-system --serviceaccount=tiller --rm --restart=Never -it --image=madhuakula/hacker-container -- bash
```

:::
