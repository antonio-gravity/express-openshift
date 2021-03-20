FROM node:14.15.4

USER root

RUN mkdir -p /app
WORKDIR /app

COPY ./public ./public
COPY ./src ./src
COPY ./bin ./bin
COPY package.json package.json
RUN /bin/bash -c 'npm install -p'

CMD ["npm", "start"]