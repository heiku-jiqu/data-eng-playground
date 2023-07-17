# Requirements

Docker Desktop installed, which comes with:

- Docker CLI: Used to manage docker images and containers
- Docker Engine: The engine that runs the containers
- Docker Compose: Utility to help manage apps that bundle multiple containers

# Apache Spark

## Building the image

```
docker build -f dockerfiles/spark.Dockerfile -t spark:3.3.1 .
```

## Running the container

```
docker run \
    --name spark-master \
    --detach \
    --ip 172.17.0.2 \
    -p 8080:8080 -p 7077:7077\
    spark:3.3.1
docker run \
    --name spark-worker \
    --detach \
    spark:3.3.1 \
    /opt/spark/sbin/start-worker.sh spark://172.17.0.2:7077
```

Note:

- to run in powershell, change backslash `\` to backticks `` ` ``
- to run in cmd, change backslash `\` to caret `^`

## Using `docker compose`

To build and run everything:

```
docker compose up -d
```

To stop everything:

```
docker compose -p data-eng-playground stop
```

To remove the containers:

```
docker compose -p data-eng-playground rm
```
