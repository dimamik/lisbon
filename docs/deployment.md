# Docker-based deploy

## The flow

- Code is pushed to main on github
- githubActions or CircleCI recieve an event, and start the job:
- They build a new release docker image from the dockerfile provided in the source-code
- They release builded image to the registry (docker releases are free)
- VPS server is subscribed (for example using watchtower) to new releases of the package
- When new release arrives, VPS:
    - downloads the release
    - creates a container from it
    - shuts down the previous container
    - starts the new container (downtime is really small)
    - Database is sitting in a different container?




## Commands and flow

- CI
    - Deploy workflow:
    - `docker build -t dimamik/lisbon .`
    - `docker push dimamik/lisbon:latest`

- Server (needs to have .env file in place)
    - `docker-compose -f docker-compose.yml up`