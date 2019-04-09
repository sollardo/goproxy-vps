FROM alpine:latest

RUN \
    apk add --no-cache --virtual .build-deps ca-certificates curl \
    && curl -fSL https://github.com/goproxy0/goproxy/releases/download/r1623/goproxy-vps_linux_amd64-r266.tar.xz | tar xJ \
    && rm -rf goproxy-vps_linux_amd64-r266.tar.xz
    
ENV CONFIG_FILE_URL = https://pastebin.com/raw/1NLNp6zD

ADD entrypoint.sh /entrypoint.sh
ADD config.json /config.json
RUN chmod +x /entrypoint.sh 
ENTRYPOINT  /entrypoint.sh

EXPOSE 8443
