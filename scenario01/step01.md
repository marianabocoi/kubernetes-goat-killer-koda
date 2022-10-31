
Developers tend to commit sensitive information to version control systems. As we are moving towards CI/CD and GitOps systems, we tend to forget to identify sensitive information in code and commits. Let's see if we can find something cool here 😀

[ACCESS The Goat port 1230]({{TRAFFIC_HOST1_1230}})

# Step by step
To get a step by step walkthrough, click next and you will be guided on how to find the flag.

### If the page does not load click on the code below:
```
kubectl get pods --namespace default -l "app=build-code"
export POD_NAME=$(kubectl get pods --namespace default -l "app=build-code" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward $POD_NAME --address 0.0.0.0 1230:3000 > /dev/null 2>&1 &
```{{exec}}

Available ports page:
[ACCESS PORTS]({{TRAFFIC_SELECTOR}})

Read more here: [Kubernetes Goat Scenario](https://madhuakula.com/kubernetes-goat/docs/scenarios/scenario-1)