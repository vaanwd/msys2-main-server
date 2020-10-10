FROM debian:buster

ENV DEBIAN_FRONTEND noninteractive

# Update system
RUN apt-get update && \
    apt-get -y dist-upgrade && \
    rm -rf /var/lib/apt/lists/*

# Install dependencies
RUN apt-get update && \
    apt-get -y install rsync curl && \
    rm -rf /var/lib/apt/lists/*

# Install mirrorbits
RUN curl -L https://github.com/etix/mirrorbits/releases/download/v0.5.1/mirrorbits-v0.5.1.tar.gz -o mirrorbits.tar.gz;\
    tar xvf mirrorbits.tar.gz;\
    mv mirrorbits/mirrorbits /usr/local/bin/mirrorbits;\
    ln -s /usr/local/bin/mirrorbits /usr/local/bin/mb;\
    mkdir -p /usr/local/share/mirrorbits/;\
    mv mirrorbits/templates/* /usr/local/share/mirrorbits/

COPY init.sh /init.sh
ENTRYPOINT bash /init.sh
EXPOSE 80