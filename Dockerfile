FROM node:12.14-alpine

USER root

RUN mkdir -p /app
WORKDIR /app

COPY ./public ./public
COPY ./src ./src
COPY ./bin ./bin
COPY package.json package.json

ENV NODE_ENV=production
RUN npm install --production

USER 1001

ENTRYPOINT ["sh", "-c"]

CMD ["npm run start"]