* As you can see the Network Policy is dropping the traffic and you are not able to access the website now.

* You can remove all the applied resources and clean up by running the following commands

```bash
kubectl delete pod website
kubectl delete service website
kubectl delete networkpolicy website-deny
```
