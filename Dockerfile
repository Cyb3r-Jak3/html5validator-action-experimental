FROM ghcr.io/cyb3r-jak3/html5validator:experimental-alpine-d18ae4963dab22f0b895a312df26d4582830c343

COPY entrypoint.sh /entrypoint.sh
RUN apk add --update bash && rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/bash","/entrypoint.sh"]