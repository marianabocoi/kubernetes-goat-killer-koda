### 🪄 Hints & Spoilers

<details>
  <summary><b>✨ Not seeing anything fancy from response? </b></summary>
  <div>
    <div>Understand the cloud provider/platform and learn to query the metadata APIs and other internal services. For example <b>http://169.254.169.254/latest/meta-data/</b> for AWS, similarly <b>servicename.namespace.svc.cluster.local</b> for internal Kubernetes services 🙌</div>
  </div>
</details>

<details>
  <summary><b>✨ Able to query metadata-db service? </b></summary>
  <div>
    <div>There is another internal service running at http://metadata-db/latest/ which serves metadata as a microservice in the cluster. It might contains some useful juicy information 🎉</div>
  </div>
</details>