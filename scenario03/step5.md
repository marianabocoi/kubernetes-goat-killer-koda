## 🎉 Solution & Walkthrough

We can start with enumeration and reconnaissance to understand what services are running in the current instance and other networks based on the available information.

We can also query the current container/pod to see if any other services running by querying the different ports and addresses. Let's query the port 5000 in the same container http://127.0.0.1:5000 with method GET.

```bash
 curl -H 'content-type: application/json' localhost:1234 --data-raw '{"endpoint":"http://localhost:5000","method":"GET","headers":""}' 
```

Now we can see that there is an internal-only exposed service within the cluster called metadata-db, let's a query and see if we can get any more useful information http://metadata-db

<details>
  <summary><b>✨ Did the pod/service hang? </b></summary>
  <div>
    <div>If the pod hangs just kill the pods and rerun the expose service script</div>
  </div>
</details>
