# Docker-based deploy

## The flow

- Code is pushed to main on github
- CircleCI recieves an event, and start the job:
    - It builds a new release docker image from the [Dockerfile](/Dockerfile)
    - It releases builded image to the registry (docker releases are free). This can be private/public.
- VPS server is subscribed to new releases of the package (for example using watchtower).
- When new release arrives, VPS:
    - downloads the release
    - creates a container from it
    - shuts down the previous app container (database and other services are not affected)
    - starts the new container (downtime is really small)

## Commands to manually trigger updates

- CI
    - Deploy workflow:
        - `docker build -t dimamik/lisbon .`
        - `docker push dimamik/lisbon:latest`

- Server (needs to have .env file in place)
    - `./server$ docker-compose up`

## Zero down deploys

We could omit downtime by:
- When update arrives from circle ci, we're:
    - Starting new container with updated release
    - Instructing nginx to forward new requests to new container
    - Check if there are any open connections to the old server. Stop it when there aren't.

