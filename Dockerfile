FROM ubuntu:eoan

RUN apt-get update -qq && \
    apt-get install -qq --no-install-recommends llvm-9 clang cmake ninja-build && \
    rm -rf /var/lib/apt/lists/*

ENV CC clang
ENV CXX clang++
