# Requirements

Docker Desktop installed, which comes with:

    - Docker CLI: Used to manage docker images and containers
    - Docker Engine: The engine that runs the containers
    - Docker Compose: Utility to help manage apps that bundle multiple containers

# Apache Spark

## Building the image

```{dockerfile}
docker build -f dockerfiles/spark-master.Dockerfile . -t spark-master:3.3.1
docker build -f dockerfiles/spark-worker.Dockerfile . -t spark-worker:3.3.1
```

## Running the container

`docker run -it spark-master:3.3.1`
