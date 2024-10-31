ARG NODE_VERSION=20.0.0

FROM node:20

RUN apk add --no-cache gcompat libstdc++

WORKDIR /hardhat-zkit

COPY . .

RUN npm install

RUN npm run test-local
