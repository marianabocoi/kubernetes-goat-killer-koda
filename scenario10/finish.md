* Hooray 🥳 , now we can see that it contains the Kubernetes Goat flag

:::danger

This is the common way attackers push crypto miner images into the public container registries where we don't have a way to introspect the `Dockerfile` and end up running crypto miners as we don't know how the container image has been built

:::

## 🔖 References

* [Docker Hub Hack of 190k accounts review](https://medium.com/madhuakula/some-tips-to-review-docker-hub-hack-of-190k-accounts-addcd602aade)
* [20 Million Miners: Finding Malicious Cryptojacking Images in Docker Hub](https://unit42.paloaltonetworks.com/malicious-cryptojacking-images/)
* [Tainted, crypto-mining containers pulled from Docker Hub](https://techcrunch.com/2018/06/15/tainted-crypto-mining-containers-pulled-from-docker-hub/)

See [here](https://madhuakula.com/kubernetes-goat/docs/scenarios/scenario-10) for the complete non-interactive Kubernetes Goat - Scenario 10 write-up.