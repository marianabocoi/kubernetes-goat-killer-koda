
Developers tend to commit sensitive information to version control systems. As we move towards CI/CD and GitOps systems, we tend to forget to identify sensitive data in code and commits. Let's see if we can find something cool here 😀

## The Secret
For example, we have a service deployed on Kubernetes serving a web page. Inspect the service page here: [Goat Service (port 1230)]({{TRAFFIC_HOST1_1230}}). Can you discover any hidden secrets that are released unintentionally? You can try alone or follow the steps on the NEXT pages 🔎.

##### Terminal
You will use the tools in the terminal in the following steps to get the secrets.

##### Troubleshooting
If the service page above does not load, click on the code below:
```
kubectl get pods --namespace default -l "app=build-code"
export POD_NAME=$(kubectl get pods --namespace default -l "app=build-code" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward $POD_NAME --address 0.0.0.0 1230:3000 > /dev/null 2>&1 &
```{{exec}}
