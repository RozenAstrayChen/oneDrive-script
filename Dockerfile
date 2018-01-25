FROM ubuntu:14.04
MAINTAINER Roze
RUN apt-get update && apt-get install --no-install-recommends -y \
    ca-certificates \
    curl \
    mercurial \
    git-core \
    wget \
    make -y \