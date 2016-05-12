FROM alpine:latest

RUN \
    apk add --no-cache \
        perl \
        curl \
    && curl -SLk http://www.jetmore.org/john/code/swaks/files/swaks-20130209.0/swaks -o swaks \
    && chmod +x swaks \
    && mv swaks /usr/bin

ENTRYPOINT ["/usr/bin/swaks"]
