FROM ghcr.io/cyb3r-jak3/html5validator:source-alpine 

COPY entrypoint.sh /entrypoint.sh
RUN apk add bash git=2.32.1 && rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]