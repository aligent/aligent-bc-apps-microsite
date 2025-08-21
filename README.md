# aligent-bc-apps-microsite

## Setup

1. Clone the repo

```sh
git clone https://github.com/aligent/aligent-bc-apps-microsite.git
cd aligent-bc-apps-microsite

```

2. Serve the site

```sh
USERID="$(id -u):$(id -g)" docker compose up --build
```

- Setting `USERID` is important to avoid writing files as the root user
- The `--build` flag can be omitted if the dockerfile hasn't changed since it was last run.

3. Open http://localhost:4000/ to view the site. Changes made should hot-reload.

## Advanced usage

Arbitrary CLI commands can be run inside the docker container using the CLI service

```sh
USERID="$(id -u):$(id -g)" docker compose run --rm cli <command>
```
