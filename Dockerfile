#
# my mini base image
#
#

FROM  gliderlabs/alpine:3.4

MAINTAINER Gunnar Falk <docker@grundstil.de>
# inspired by https://github.com/colstrom/docker-alpine 

## Taken directly form https://github.com/colstrom/docker-alpine:
# This includes the main, testing, and community repositories,
# but all packages outside main are masked. 
# To import them, just use apk add package@tag.
##

RUN echo http://nl.alpinelinux.org/alpine/v3.4/main | tee /etc/apk/repositories \
&& echo @testing http://nl.alpinelinux.org/alpine/v3.4/testing | tee -a /etc/apk/repositories \
&& echo @community http://nl.alpinelinux.org/alpine/v3.4/community | tee -a /etc/apk/repositories \
&& apk add --update \
curl \
wget \
bash \
tree \
sed \
rsync \
openssh \
vim \
nano \
ca-certificates \
&& rm -rf /var/cache/apk/*

