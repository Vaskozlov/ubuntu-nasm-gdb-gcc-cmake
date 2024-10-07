# syntax=docker/dockerfile:1

FROM ubuntu:jammy
ARG TARGETPLATFORM
ARG BUILDPLATFORM
ARG TARGETOS
ARG TARGETARCH

LABEL authors="vaskozlov"

RUN apt-get update
RUN apt install -y git
RUN apt install -y fish
RUN apt install -y python3.10
RUN apt install -y gcc
RUN apt install -y cmake
RUN apt install -y ninja-build
RUN apt install -y gdb
RUN apt install -y make
RUN apt install -y nasm
RUN apt install -y nano
RUN apt install -y vim
RUN apt install -y curl

RUN curl https://gist.githubusercontent.com/Vaskozlov/165d50671bae7323c5cce76b84622265/raw/b9df3791d1f7ed117b6111c077992e3c1b3bc63a/docker_m1_gdb.py > run_gdb.py

ENTRYPOINT ["fish"]