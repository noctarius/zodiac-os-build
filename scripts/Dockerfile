FROM ubuntu:16.04
ENV DEBIAN_FRONTEND=noninteractive
ENV LANG en_US.utf8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.utf8

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install wget \
                   build-essential \
                   bc \
                   git \
                   locales \
                   cpio \
                   lib32stdc++6 \
                   lib32z1 \
                   libc6-i386 \
                   texinfo \
                   vim \
                   nano \
                   unzip \
                   ncurses-dev \
                   python \
                   lzop \
                   android-tools-fsutils && \
    rm -rf /var/lib/apt-lists/* && \    
    locale-gen en_US.UTF-8 && \
    echo 'LANG="en_US.UTF-8"' > /etc/default/locale && \
    mkdir -p /opt/buildroot && \
    mkdir -p /opt/devkit && \
    mkdir -p /opt/dlcache && \
    #wget -P /opt "https://github.com/buildroot/buildroot/archive/master.tar.gz" && \
    wget -P /opt "https://github.com/buildroot/buildroot/archive/2017.05.2.tar.gz" && \
    tar -C /opt/buildroot -xzf /opt/2017.05.2.tar.gz --strip-components=1
