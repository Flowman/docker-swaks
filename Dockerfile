FROM alpine:3.12

MAINTAINER Peter Szalatnay <theotherland@gmail.com>

ENV SWAKS_VERSION=20190914.0

RUN set -eux; \
    apk add --update --no-cache \
        perl \
        perl-net-ssleay \
        perl-net-dns \
        curl \
        tzdata; \
    curl -SLk https://www.jetmore.org/john/code/swaks/files/swaks-$SWAKS_VERSION/swaks -o swaks; \
    chmod +x swaks; \
    mv swaks /usr/bin

WORKDIR /root

ENTRYPOINT ["/usr/bin/swaks"]
