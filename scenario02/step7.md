## Wrap-up

* Hooray 🥳 , now we can see that there are not images on the host system. We can now use different docker commands to gain more access and further exploitation.

```bash
;/tmp/docker/docker -H unix:///custom/docker/docker.sock images --digests
```

It's time to validate your solution to the challenge. 
For that, answer the following question: and assign the answer to `SOLUTION` variable:


Q: What is the digest of the hello-world docker image on the host? 


```
echo -n <Answer> > solution.txt
```
Then press `CHECK`!
