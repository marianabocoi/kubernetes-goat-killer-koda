### ⚡️ The story

Most of the CI/CD and pipeline systems use the underlying host Docker runtime to build containers for you within the pipeline by using something called DIND (docker-in-docker) with a UNIX socket. Here in this scenario, we try to exploit this misconfiguration and gain access to the host system by escaping out of the docker container.
