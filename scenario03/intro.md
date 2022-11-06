This is no different from the traditional workloads. Most of the compute instances while running the applications store sensitive information like secrets, api_keys, etc. in the environment variables. Similarly, in Kubernetes, most of the people store sensitive information like Kubernetes Secrets and the Config values in the environment variables and if an attacker can find application vulnerabilities like RCE(remote code execution) or command injection then it's game over for that secret.

By the end of the scenario, we will understand and learn the following

- How to explore the environment variables and analyze
- Gaining access to sensitive information in the container

See [here](https://madhuakula.com/kubernetes-goat/docs/scenarios/scenario-12) for the complete non-interactive Kubernetes Goat - Scenario 12 write-up.