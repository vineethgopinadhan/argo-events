FROM golang:alpine3.11

RUN apk add ca-certificates

RUN apk update \
 && apk upgrade \
 && apk add git


RUN curl -kLo /usr/local/bin/dep \
             https://github.com/golang/dep/releases/download/v0.5.4/dep-linux-amd64 \
     && chmod +x /usr/local/bin/dep

COPY ../. .

RUN ls -la

