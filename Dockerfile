FROM ubuntu:eoan

RUN apt-get update -qq && \
    apt-get install -qq --no-install-recommends llvm-9 clang cmake ninja-build && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update -qq && \
    apt-get install -qq --no-install-recommends git curl wget zip ca-certificates && \
    rm -rf /var/lib/apt/lists/*

RUN wget -q https://github.com/mozilla/grcov/releases/latest/download/grcov-linux-x86_64.tar.bz2 && \
    tar -jxf grcov-linux-x86_64.tar.bz2 && \
    mv grcov /usr/bin && \
    rm grcov-linux-x86_64.tar.bz2

ENV CC clang
ENV CXX clang++
