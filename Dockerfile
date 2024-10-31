ARG NODE_VERSION=20.0.0

FROM node:20-alpine

WORKDIR /hardhat-zkit

COPY . .

RUN npm install

RUN npm run test-local
