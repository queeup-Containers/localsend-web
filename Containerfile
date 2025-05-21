FROM node:24-bookworm AS builder

WORKDIR /data

RUN git clone -b main https://github.com/localsend/web.git .

RUN corepack enable pnpm && \
    pnpm install && \
    pnpm run generate

FROM nginxinc/nginx-unprivileged:stable-alpine-slim
COPY --from=builder /data/.output/public /usr/share/nginx/html
