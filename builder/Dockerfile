FROM ubuntu:15.04
RUN apt-get update && apt-get install -y \
  vim \
  tmux \
  clang \
  build-essential \
  libc++1 libc++-dev \
  libc++abi1 libc++abi-dev \
  cmake \
  ninja-build \
  ssh \
  rsync \
  git \
  language-pack-en \
  curl \
  golang \
  mercurial \
  make \
  binutils \
  bison \
  gcc \
  build-essential

RUN bash -c "bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)"
RUN bash -c "source /root/.gvm/scripts/gvm && \
  gvm install go1.4 && \ 
  gvm use go1.4 --default && \
  gvm install go1.5 && \
  gvm use go1.5 --default"

RUN bash -c "source /root/.gvm/scripts/gvm && \
  go get github.com/constabulary/gb/... "

ADD sim /sim

EXPOSE 22

CMD service ssh start && /bin/bash
