FROM node:alpine
RUN apk add --no-cache bash

WORKDIR /app/api

COPY ./ /app/api

WORKDIR /app/api
RUN npm install

ENV PORT 3000
EXPOSE $PORT
CMD [ "npm", "start" ]
