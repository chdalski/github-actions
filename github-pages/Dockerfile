FROM alpine:3.18.0

RUN apk update && apk add git bash

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]