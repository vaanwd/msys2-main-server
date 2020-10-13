FROM ubuntu:focal

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    pkg-config zlib1g-dev protobuf-compiler libprotoc-dev rsync git make golang && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/etix/mirrorbits.git && \
    cd mirrorbits && \
    git checkout c5f884ed441117b6a1f324998df7eaca421e6d0a && \
    make install PREFIX=/usr && \
    cd .. && rm -Rf mirrorbits

COPY init.sh /init.sh
ENTRYPOINT bash /init.sh
EXPOSE 80