FROM thecodingmachine/php:8.3-v5-cli-node22 AS dev

ENV PHP_EXTENSION_INTL=1
ENV PHP_EXTENSION_BCMATH=1
ENV PHP_EXTENSION_GD=1

USER root

RUN apt update && \
    apt install -y --no-install-recommends mysql-client build-essential && \
    apt remove -y yarn && \
    npm install -g corepack && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

USER docker

RUN corepack enable && \
    corepack yarn && \
    corepack install -g yarn@stable