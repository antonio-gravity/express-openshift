FROM node:12.14-alpine

USER root

RUN mkdir -p /app
WORKDIR /app

COPY ./public ./public
COPY ./src ./src
COPY ./bin ./bin
COPY package.json package.json
RUN /bin/bash -c 'npm install -p'

USER 1001

CMD ["npm", "start"]