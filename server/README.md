# Server configurations

## Server initial setup

1. Copy `./server` directory to the server instance (VPS).
2. Run `cp .env-example .env` & set missing env variables
3. From the `./server` directory:
    ```bash
    docker-compose up -d
    ```
4. Check the health of docker-compose container via:
    ```bash
    docker-compose ps
    ```

## Helpful docker commands

- To delete all containers including its volumes use,
    ```bash
    docker rm -vf $(docker ps -aq)
    ```
- To delete all the images,
    ```bash
    docker rmi -f $(docker images -aq)
    ```

