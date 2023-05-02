# Lisbon

## Docs

- [Server configuration](server/README.md)

## Roadmap

An app to showcase full start to end production-ready deployment of the phoenix app.
The app itself can be anything that needs a database, ecto schema and some business logic.
The core purpose for this project is to learn how to deploy the app without any 3rd party tooling (like fly.io).

### First stage (single server instance)
- [X] Orchestrated docker-compose file with database, phoenix app
- [X] Circle CI AND GithubActions config that will build and run tests for our app
- [ ] A livebook showcase on how to debug production-issues without ssh
  - This needs a distribution and node-creation
  - The problem in there, is that we're running a docker instance and erlang is using 
  port **4369** to find available ports and then random port to send data over TCP.
  Ideally we would limit this values and expose a range of ports. This would be a cool step forward for this project.


### Second stage (multiple instances)
- [ ] Introduce second VPS and do load-balancing
- [ ] Replicate the database
- [ ] Introduce CloudFlare and accept only proxied requests from there


### Third stage (authentication use-case)

By this stage, we need to have fault-tolerant app that auto-depoloys on-commit, has a reliable postgres connection pulls 

- [ ] Authentication via different providers:
  - [ ] Email
  - [ ] Google Auth
  - [ ] SSO
  - [ ] 2FA

