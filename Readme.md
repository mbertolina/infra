- To build the image

```
~/docker$ sudo docker build . --tag infra:0.1.0 --file Dockerfile.infra_0.1.0
```

- To tag and upload to docker hub

```
martin@new-ubuntu:~/docker$ sudo docker image ls
REPOSITORY         TAG       IMAGE ID       CREATED          SIZE
infra              0.1.0     77e9b6f32017   21 minutes ago   2.58GB
mbertolina/infra   0.1.0     77e9b6f32017   21 minutes ago   2.58GB
hello-world        latest    d2c94e258dcb   7 months ago     13.3kB
martin@new-ubuntu:~/docker$ sudo docker push mbertolina/infra:0.1.0

```