# Lisbon

An app to showcase full start to end production-ready deployment of the phoenix app.
The app itself can be anything that needs a database, ecto schema and some business logic.
The core purpose for this project is to learn how to deploy the app without any 3rd party tooling (like fly.io).

## First stage (single server instance)
- [ ] Orchestrated docker-compose file with database, phoenix app and nginx config
- [ ] Circle CI AND GithubActions config that will build and run tests for our app, do zero-down deploy
- [ ] A livebook showcase on how to debug production-issues without ssh


# Second stage (multiple instances)
- [ ] Introduce second VPS and do load-balancing
- [ ] Replicate the database
- [ ] Introduce CloudFlare and accept only proxied requests from there


# Third stage (authentication use-case)


By this stage, we need to have fault-tolerant app that auto-depoloys on-commit, has a reliable postgres connection pulls 

- [ ] Authentication via different providers:
  - [ ] Email
  - [ ] Google Auth
  - [ ] SSO
  - [ ] 2FA

