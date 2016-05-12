[![](https://badge.imagelayers.io/flowman/swaks:latest.svg)](https://imagelayers.io/?images=flowman/swaks:latest 'Get your own badge on imagelayers.io')

# What is SWAKS?

 Swaks is a featureful, flexible, scriptable, transaction-oriented SMTP test tool. Features include:

 - SMTP extensions including TLS, authentication, pipelining, and XCLIENT
 - Protocols including SMTP, ESMTP, and LMTP
 - Transports including unix-domain sockets, internet-domain sockets (IPv4 and IPv6), and pipes to spawned processes
 - Completely scriptable configuration, with option specification via environment variables, configuration files, and command line


## Info

This image is based on the popular Alpine Linux project, available in the alpine official image. Alpine Linux is much smaller than most distribution base images (~5MB), and thus leads to much slimmer images in general.

## Usage

Refer to this doc for [command line options](http://www.jetmore.org/john/code/swaks/latest/doc/ref.txt)

```bash
docker run --rm \
           flowman/swaks \
           -f from@mail.dev -t to@mail.dev -s hostname -p 25
```
