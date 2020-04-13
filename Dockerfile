FROM alpine:latest

RUN apk update && apk upgrade

RUN apk add npm

RUN npm upgrade npm

RUN npm install -g yarn

# root経由でのみログイン可能にする。
RUN adduser app -h /app --disabled-password

COPY app/ /app/

