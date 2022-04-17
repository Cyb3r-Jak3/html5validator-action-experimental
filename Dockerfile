FROM ghcr.io/cyb3r-jak3/html5validator:source-alpine 

COPY entrypoint.sh /entrypoint.sh
RUN apk update && apk add --no-cache --force-broken-world bash git=2.30.1 && rm -rf /var/cache/apk/*
# RUN apk update
# RUN apk add bash
# RUN apk add --force-broken-world git=2.30.1
# RUN rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]