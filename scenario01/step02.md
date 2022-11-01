## The Secret
In this scenario, we have a service `Build Code` deployed on Kubernetes that serves a web page. Inspect the service page here: [Build Code service page]({{TRAFFIC_HOST1_1230}}). Can you discover any hidden secrets that are released unintentionally?

You will use the command-line tools in the terminal to get the secrets. You can try finding the secrets by yourself or follow the steps on the `NEXT` pages 🔎.

### Troubleshooting
If the service page above does not load
- Wait until `Kubernetes Goat` is displayed on the terminal, then retry.
- If it still does not work, click on the code below:
```
kubectl get pods --namespace default -l "app=build-code"
export POD_NAME=$(kubectl get pods --namespace default -l "app=build-code" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward $POD_NAME --address 0.0.0.0 1230:3000 > /dev/null 2>&1 &
```{{exec}}
