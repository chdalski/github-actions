FROM alpine:3.17.1

RUN apk update && apk add git bash

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]