# Server configurations

## Server initial setup

1. Copy `./server` directory to the server instance (VPS).
2. Run `cp .env-example .env` & set missing env variables
3. From the `./server` directory:
    ```bash
    $server: docker-compose --env-file .env up -d
    ```
4. Check the health of docker-compose container via:
    ```bash
    docker-compose ps
    ```



