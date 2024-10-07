FROM node:lts

WORKDIR /hardhat-zkit

COPY . .

RUN npm install

CMD ["npm", "run", "test:local"]
