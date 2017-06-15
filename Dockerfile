FROM tim03/gcc
LABEL maintainer Chen, Wenli <chenwenli@chenwenli.com>
WORKDIR /root/src
RUN \
  curl http://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz | tar zxvf -
RUN \
  cd yasm-1.3.0 && \
  ./configure --prefix=/usr/local && make && make install && make clean

