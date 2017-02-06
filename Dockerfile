FROM alpine:3.5

RUN \
    apk add --no-cache --virtual .build-deps curl xz bash \
    && mkdir -p /opt/goproxy \
    && cd /opt/goproxy \
    && curl -L git.io/get-goproxy-vps | bash \
    && apk del .build-deps 
    
ENTRYPOINT ["/opt/goproxy/goproxy-vps"]

EXPOSE 443
