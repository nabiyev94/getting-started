# syntax=docker/dockerfile:1
FROM node:18.12.1-alpine3.15
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "app/src/index.js"]
EXPOSE 3000