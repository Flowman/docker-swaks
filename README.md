[![](https://badge.imagelayers.io/flowman/swaks:latest.svg)](https://imagelayers.io/?images=flowman/swaks:latest 'Get your own badge on imagelayers.io')

# What is SWAKS?

 [Swaks](https://www.jetmore.org/john/code/swaks/) is a featureful, flexible, scriptable, transaction-oriented SMTP test tool. Features include:

 - SMTP extensions including TLS, authentication, pipelining, and XCLIENT
 - Protocols including SMTP, ESMTP, and LMTP
 - Transports including unix-domain sockets, internet-domain sockets (IPv4 and IPv6), and pipes to spawned processes
 - Completely scriptable configuration, with option specification via environment variables, configuration files, and command line

### SWAKS version

 This image uses SWAKS [20190914-0](https://www.jetmore.org/john/blog/2019/10/swaks-release-20190914-0-available/) ([full changelog](http://jetmore.org/john/code/swaks/files/swaks-20190914-0/doc/Changes.txt))


## Info

This image is based on the popular Alpine Linux project, available in the alpine official image. Alpine Linux is much smaller than most distribution base images (~5MB), and thus leads to much slimmer images in general.

## Usage

Refer to this doc for [command line options](http://jetmore.org/john/code/swaks/files/swaks-20181104.0/doc/ref.txt)

### Simple

```bash
docker run --rm \
           flowman/swaks \
           -f from@mail.dev -t to@mail.dev -s hostname -p 25
```

### Seting specific timezone

```bash
docker run --rm \
           -e TZ="Europe/Berlin" \
           flowman/swaks \
           -f from@mail.dev -t to@mail.dev -s hostname -p 25
```

### Using an alias

Just put the following into your `.bash_profile`

```bash
alias swaks='_cmd() { docker run --rm -e TZ="Europe/Berlin" -v "$PWD":/root freinet/swaks "$@";}; _cmd'
```

Now you can even use a `.swaksrc` in your working directory and pull in attachments from there...

```bash
swaks -f from@mail.dev -t to@mail.dev -s hostname -p 25 --attach eicar.zip
```
