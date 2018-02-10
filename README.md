# presto-cluster-on-docker

[![Build Status](https://travis-ci.org/OlegGorj/presto-cluster-on-docker.svg?branch=master)](https://travis-ci.org/OlegGorj/presto-cluster-on-docker)
[![GitHub last commit](https://img.shields.io/github/last-commit/google/skia.svg?branch=master)](https://travis-ci.org/OlegGorj/presto-cluster-on-docker)
[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://dockerbuildbadges.quelltext.eu/status.svg?organization=oleggorj&repository=presto-cluster-on-docker)

### presto-cluster-on-docker is a took for launching multiple node [Presto](https://prestodb.io/) cluster on docker container.

The image is synched with the version `0.194` master branch of [presto repository](https://github.com/prestodb/presto). Therefore you can try the `0.194` presto for developing purpose easily.


## Build image

```
$ make
```

## Launch presto

Presto cluster can be launched by using docker-compose.

```
$ make run
```

## docker-compose.yml

Images are uploaded in [DockerHub](https://hub.docker.com/). These images are build with the latest master branch of Presto. You can launch multiple node docker presto cluster with below yaml file.

```
version: '2'

services:
  coordinator:
    image: oleggorj/presto-coordinator
    ports:
      - "8080:8080"
    container_name: "coordinator"
  worker0:
    image: oleggorj/presto-worker
    container_name: "worker1"
    ports:
      - "8081:8081"

```

Run

```
$ docker-compose up -d
```


