ARG NODE_VERSION=20.0.0

FROM node:${NODE_VERSION}

WORKDIR /hardhat-zkit

COPY . .

RUN npm install

RUN npm run test-local
