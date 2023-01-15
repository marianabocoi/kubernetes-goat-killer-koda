## 🎉 Solution & Walkthrough

### 🎲 Method 1

:::info

`kubeaudit` is a command-line tool and a Go package to audit Kubernetes clusters for various security concerns, such as:

   * run as non-root
   * use a read-only root filesystem
   * drop scary capabilities, don't add new ones
   * don't run privileged
   * and more!

Refer to [https://github.com/Shopify/kubeaudit](https://github.com/Shopify/kubeaudit) for more details about the project

:::

* To get started with this scenario you can run the following command to start the `hacker-container` with cluster administrator privileges (as the tiller service account already has that)

```bash
kubectl run -n kube-system --serviceaccount=tiller --rm --restart=Never -it --image=madhuakula/hacker-container -- bash
```

* Run the `kubeaudit` in cluster mode. Kubeaudit can detect if it is running within a container in a cluster. If so, it will try to audit all Kubernetes resources in that cluster

```bash
kubeaudit all
```

![Scenario 17 kubeaudit](./sc-17-1.png)
