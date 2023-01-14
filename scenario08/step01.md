### ⚡️ The story

If any of the users exposed any service within the Kubernetes cluster with `NodePort`, this means that the nodes where the Kubernetes clusters are running don't have any firewall/network security enabled. We need to see some unauthenticated and unauthorized services.

:::info

To get started with the scenario, run the following command and look for Kubernetes nodes external IP addresses

```bash
kubectl get nodes -o wide
```

:::

:::tip

When Kubernetes creates a `NodePort` service, it allocates a port from a range specified in the flags that are defined in your Kubernetes cluster configuration. (By default, these are ports ranging from 30000-32767.)

:::
