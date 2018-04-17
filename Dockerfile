FROM alpine

RUN apk --no-cache add bash curl

COPY register-api register-apis update-api /usr/local/bin/

WORKDIR /usr/local/bin
