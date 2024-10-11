ENV VERSION=experimental-alpine
FROM ghcr.io/cyb3r-jak3/html5validator:$VERSION

COPY entrypoint.sh /entrypoint.sh
RUN apk add --update --no-cache bash git && rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]