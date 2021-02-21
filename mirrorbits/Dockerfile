FROM ubuntu:focal as build

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    pkg-config zlib1g-dev protobuf-compiler libprotoc-dev git make golang && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/etix/mirrorbits.git && \
    cd mirrorbits && \
    git checkout c5f884ed441117b6a1f324998df7eaca421e6d0a
RUN cd mirrorbits && \
    mkdir -p dist/usr/bin && \
    make install PREFIX=/usr DESTDIR=dist

FROM ubuntu:focal

COPY --from=build /mirrorbits/dist /

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    rsync redis-tools ca-certificates && \
    rm -rf /var/lib/apt/lists/*

COPY init.sh /init.sh
ENTRYPOINT bash /init.sh
EXPOSE 80