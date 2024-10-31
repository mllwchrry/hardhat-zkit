ARG NODE_VERSION=20.0.0

FROM node:20.0.0

WORKDIR /hardhat-zkit

COPY . .

RUN npm install

RUN npm run test-local
