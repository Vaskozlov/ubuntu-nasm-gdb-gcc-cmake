# syntax=docker/dockerfile:1

FROM ubuntu:jammy
ARG TARGETPLATFORM
ARG BUILDPLATFORM
ARG TARGETOS
ARG TARGETARCH

LABEL authors="vaskozlov"

RUN apt-get update
RUN apt install -y git
RUN apt install -y python3.10
RUN apt install -y gcc
RUN apt install -y cmake
RUN apt install -y ninja-build
RUN apt install -y gdb
RUN apt install -y make
RUN apt install -y nasm

ENV CC gcc-14
ENV CXX g++-14

ENTRYPOINT ["top", "-b"]