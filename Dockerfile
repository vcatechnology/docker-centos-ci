FROM vcatechnology/centos:latest
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Install useful packages
RUN yum install -y \
  python \
  git \
  sudo 

# grab the VCA CI Scripts
RUN yum install -y wget && \
  wget https://tool-chain.vcatechnology.com/release/vca-tool-chain-ci-scripts-latest.tar.xz && \
  tar -Jxf vca-tool-chain-ci-scripts-latest.tar.xz -C / && \
  rm vca-tool-chain-ci-scripts-latest.tar.xz && \
  yum remove -y wget

# create a build-server user with sudo permissions & no password
RUN useradd -ms /bin/bash build-server && \
    echo "build-server ALL=(root) NOPASSWD:ALL" | tee -a /etc/sudoers.d/build-server && \
    echo "#includedir /etc/sudoers.d" >> /etc/sudoers && \
    chmod 755 /etc/sudoers.d && \
    chmod 0440 /etc/sudoers.d/build-server

# set the build-server user as default
WORKDIR /builds
USER build-server
