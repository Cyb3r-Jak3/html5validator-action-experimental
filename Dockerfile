FROM ghcr.io/cyb3r-jak3/html5validator:source-alpine 

COPY entrypoint.sh /entrypoint.sh
# RUN apk update && apk add --no-cache --force-broken-world bash git=2.30.1 && rm -rf /var/cache/apk/*
RUN apk update
RUN apk add bash
RUN apk add git=2.32.1-r0 --repository http://dl-cdn.alpinelinux.org/alpine/v3.5/main/
RUN rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]