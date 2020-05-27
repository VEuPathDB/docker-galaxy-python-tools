FROM alpine:3.11

LABEL name=galaxy-python-tools \
      version=1.0 \
      homepage=https://github.com/EuPathDB-Infra/docker-galaxy-python-tools

RUN echo "@community http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
    && apk add --update --no-cache \
      build-base \
      python2 \
      python2-dev \
      py2-pip git \
      gcc \
      g++ \
      openblas-dev@community \
    && pip install numpy cython \
    && pip install 'biom-format==2.1.7'