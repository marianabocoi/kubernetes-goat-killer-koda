## 🎉 Solution & Walkthrough
* By looking at the application functionality and dabbling with the input and output, we can see it has standard command injection vulnerability. Assuming it's running in a Linux container we can use the `;` delimiter to run/pass other commands

```bash
127.0.0.1; id
```

* As we can see it returns the response for the `id` command, now we can analyze the system and see what potential information we can obtain

* It contains `docker.sock` mounted into the file system as it's not available commonly in standard systems

```bash
; mount | grep docker
```
:::tip

We can use multiple methods for communicating with the `docker.sock` UNIX socket. Some of them include [official docker binary](https://download.docker.com/linux/static/stable/), or a simple `curl` program as well.  

:::
