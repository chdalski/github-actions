FROM alpine:3.17.2

RUN apk update && apk add git bash

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]