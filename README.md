# [LocalSend](https://github.com/localsend/web) Web App

A web app integrating WebRTC and WebSockets to share files with other LocalSend peers (browsers, or native versions).

## Tags

- `latest`: latest localsend web app on top of [nginx-unprivileged](https://hub.docker.com/r/nginxinc/nginx-unprivileged) image

## Pull

```bash
podman pull docker.io/queeup/localsend-web

# OR

podman pull ghcr.io/queeup-containers/localsend-web
```

## Use

```bash
podman run \
    --detach \
    --name localsend-web \
    --publish 8080:8080 \
    --rm \
    localsend-web
```

## Build

```bash
podman build --tag localsend-web --file Containerfile
```

[Containerfile is here](https://github.com/queeup-containers/localsend-web/blob/main/Containerfile)
