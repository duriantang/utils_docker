FROM alpine:3.12.3
LABEL maintainer="duriantang@gmail.com"
RUN \
    apk update \
    && apk add --no-cache \
        bind-tools \
        ca-certificates \
        curl \
        git \
        jq \
        openssh-client \
        rsync \
        xz \
        zstd \
    && update-ca-certificates \
    && rm -rf /var/cache/apk/*
