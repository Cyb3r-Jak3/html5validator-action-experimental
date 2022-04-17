FROM ghcr.io/cyb3r-jak3/html5validator:source-alpine 

COPY entrypoint.sh /entrypoint.sh
RUN apk add --update bash git=2.35.0 && rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]