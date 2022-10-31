Developers tend to commit sensitive information to version control systems. As we are moving towards CI/CD and GitOps systems, we tend to forget to identify sensitive information in code and commits. Let's see if we can find something cool here 😀

To set up the forwarding needed for this scenario, run:
```
cd kubernetes-goat
export POD_NAME=$(kubectl get pods --namespace default -l "app=build-code" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward $POD_NAME --address 0.0.0.0 1230:3000 > /dev/null 2>&1 &
cd
```{{exec}}

[ACCESS The Goat port 1230]({{TRAFFIC_HOST1_1230}})

Available ports:
[ACCESS PORTS]({{TRAFFIC_SELECTOR}})