FROM alpine:3.5

RUN \
    apk add --no-cache --virtual .build-deps curl \
    && mkdir -p /opt/goproxy \
    && cd /opt/goproxy \
    && curl -fSL https://github.com/phuslu/goproxy-ci/releases/download/r1292/goproxy-vps_linux_amd64-r148.tar.xz | tar xJ \
    && apk del .build-deps 
    
ENTRYPOINT ["/opt/goproxy/goproxy-vps"]

CMD ["-logtostderr","-v","3"]

EXPOSE 443
