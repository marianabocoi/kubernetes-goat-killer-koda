* > This deployment has a custom serviceaccount mapped with overly permissive policy/access. As an attacker we can leverage this to gain access to other resources and services.

* As the Kubernetes stores all the secrets, tokens and service accounts information in the default place, navigate to there to find the useful information

```bash
cd /var/run/secrets/kubernetes.io/serviceaccount/
ls -larth
```
