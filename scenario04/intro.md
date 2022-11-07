In the early days of Kubernetes, there is no such concept as RBAC (role-based access control) and mostly it uses ABAC (attribute-based access control). Now it has superpowers like RBAC to implement the security principle of least privilege. Still, most of the real-world workloads and resources end up having wider privileges than it is intended to have. In this scenario, we will see how simple misconfiguration like this can gain access to secrets, more resources, and information.

By the end of the scenario, we will understand and learn the following

- Accessing and talking to the Kubernetes API Server using the REST API
- Working with different Kubernetes resources and querying them
- Exploiting the misconfigured/overly permissive permissions to gain access to sensitive information and resources

See [here](https://madhuakula.com/kubernetes-goat/docs/scenarios/scenario-16) for the complete non-interactive Kubernetes Goat - Scenario 16. write-up.