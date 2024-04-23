FROM --platform=linux/amd64 node:lts-alpine as builder
# FROM node:lts-alpine as builder
RUN mkdir /app

COPY . /app

RUN cd /app && npm install && \
npm run build

FROM --platform=linux/amd64 node:lts-alpine

RUN mkdir /app
COPY --from=builder /app/build /app/build
COPY --from=builder /app/package.json /app/

RUN cd /app && \
npm install
WORKDIR /app
EXPOSE 3000
CMD ["node", "build/index.js"]

