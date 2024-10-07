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

ENTRYPOINT ["fish"]