FROM alpine:latest

RUN \
    apk add --no-cache \
        perl \
        perl-net-ssleay \
        curl \
        tzdata \
    && curl -SLk http://www.jetmore.org/john/code/swaks/files/swaks-20130209.0/swaks -o swaks \
    && chmod +x swaks \
    && mv swaks /usr/bin

WORKDIR /root
ENTRYPOINT ["/usr/bin/swaks"]
