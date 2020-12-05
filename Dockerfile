FROM ghcr.io/cyb3r-jak3/html5validator:experimental-alpine@sha256:35c3b9fe1b84048ea9a3e466e5edbe1c790480002f91aecde8df58dc05d98816

COPY entrypoint.sh /entrypoint.sh
RUN apk add --update bash && rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/bash","/entrypoint.sh"]