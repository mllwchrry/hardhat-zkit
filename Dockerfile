ARG NODE_VERSION=20.0.0

FROM node:20-alpine

RUN apk add --no-cache \
    binutils \
    curl \
    && curl -Lo /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub \
    && curl -Lo /glibc.apk https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.35-r0/glibc-2.35-r0.apk \
    && curl -Lo /glibc-bin.apk https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.35-r0/glibc-bin-2.35-r0.apk \
    && apk add --no-cache /glibc.apk /glibc-bin.apk \
    && rm -rf /glibc.apk /glibc-bin.apk


WORKDIR /hardhat-zkit

COPY . .

RUN npm install

RUN npm run test-local
