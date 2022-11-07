Each environment in Kubernetes will have a lot of information to share. Some of the key things include secrets, api keys, configs, services, and a lot more. So let's go ahead and find the vault key!

* To get started with the scenario, navigate to [service page]({{TRAFFIC_HOST1_1236}})

:::tip

Find the `k8s_goat_flag` flag value by gaining access to the Kubernetes secret `k8svaultapikey` by exploiting the RBAC privileges to complete this scenario.

:::