FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g typescript
RUN npm install -g ts-node
RUN npm install

COPY . .

CMD [ "ts-node", "api/index.ts" ]