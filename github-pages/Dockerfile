FROM alpine:3.18.4

RUN apk update && apk add git bash

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]