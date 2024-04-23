# FROM --platform=linux/amd64 node:lts-alpine as build
FROM node:lts-alpine as build

WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

EXPOSE 3000

CMD {"node", "build/index.js"}
