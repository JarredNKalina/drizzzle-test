# Project Einstein BE

Soldier Engagement Platform

## Environments Setup

If applicable, [install docker](https://docs.docker.com/get-docker/).

`yarn` to install dependecies locally

> Notes:
>
> -   Dependencies are only installed locally to satisfy TypeScript integration with VS Code
> -   Docker containers are synced with host machine files

### Development

`yarn docker:dev` to run containerized development environment

Output: `🚀 Server listening on port: 4040 🚀`

API Base Entrypoint: [`localhost:4040/api/v1`](http://localhost:4000/api/v1)

### Testing

`yarn docker:test` to run containerized testing environment on watch mode

`yarn view:coverage` to serve HTML page with testing coverage lcov report
# drizzzle-test
