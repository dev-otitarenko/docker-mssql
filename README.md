# Sample database for examples

This is the docker image with MS SQL database for mostly all my samples. You can find script for creation all tables 

# Checking parameters

Before running the docker container with DB, please change parameters in docker-compose.yml suitable for you:
```sh
version: '2'
services:
  db:
    build: db
    image: mcmoe/mssqldocker
    restart: always
    environment:
      ACCEPT_EULA: Y
      **SA_PASSWORD: Passw0rd2**
    ports:
      - 1433:1433
    **container_name: sampledb**
    volumes:
      - ./docker/samples-db/data:/var/opt/mssql
```

# Running container

```sh
docker-compose -f ./docker-compose.yml build
docker-compose -f ./docker-compose.yml up -d
```

If you have some issues with the container, please check log or run using following command
```sh
docker-compose -f ./docker-compose.yml up
```

Happy coding
