ARG NODE_VERSION=20.0.0

FROM node:${NODE_VERSION}-alpine

WORKDIR /hardhat-zkit

COPY . .

RUN npm install

ARG RUN_TESTS=true

RUN if [ "$RUN_TESTS" = "true" ]; then npm run test-local; fi
