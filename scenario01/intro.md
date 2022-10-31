This scenario is to focus on some popular mistakes by developers & DevOps teams when packaging the artifacts and application codebase. It has real-world impacts like a compromise of organizations and their infrastructure in the wild.

By the end of the scenario, we will understand and learn the following

- How to test security misconfigurations in web application entry points
- Common mistakes or misconfigurations of packaging applications and containers
- Detecting sensitive keys and information in version control system codebases
- Using open-source tools to identify and detect secrets

To set up the forwarding needed for this scenario, run:
```
cd kubernetes-goat
export POD_NAME=$(kubectl get pods --namespace default -l "app=build-code" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward $POD_NAME --address 0.0.0.0 1230:3000 > /dev/null 2>&1 &
cd
```{{exec}}