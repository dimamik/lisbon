# Lisbon

An app to showcase full start to end production-ready deployment of the phoenix app.
The app itself can be anything that needs a database, ecto schema and some business logic.
The core purpose for this project is to learn (and share) how to deploy the app without any 3rd party tooling (like fly.io).

The costs of this deploy are:
- Domain cost: ~10$/anually - [cloudflare](cloudflare.com)
- VPS cost: starting from 5$/monthly - [hetzner](hetzner.com)

# Links

- [kiwis.pl](https://kiwis.pl/)
- [livebook.kiwis.pl](https://livebook.kiwis.pl/)

## Docs

- [Server configuration](server/README.md)
- [CI deployment process](docs/deployment.md)
- [Local developing](docs/local.md)

## State

### First stage (single server instance)
- [X] Orchestrated docker-compose file with database, phoenix app
- [X] Circle CI config that will build and run tests
- [X] Circle CI config that will deploy the app using releases and docker
- [X] A livebook showcase on how to debug some of the production-issues without ssh


### Second stage (multiple instances)
- [ ] Introduce metrix to measure app load & system events
- [ ] Introduce second VPS and add load-balancing (via shared network)
- [ ] Replicate the database, use postgres streams to create a follower
- [ ] Introduce CloudFlare and accept only proxied requests from there


### Third stage (authentication use-case)

By this stage, we need to have fault-tolerant app that auto-depoloys on-commit, has a reliable postgres connection pulls 

- [ ] Authentication via different providers:
  - [ ] Email
  - [ ] Google Auth
  - [ ] SSO
  - [ ] 2FA

