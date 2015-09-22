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
  curl

ADD sim /sim

EXPOSE 22

CMD service ssh start && /bin/bash
