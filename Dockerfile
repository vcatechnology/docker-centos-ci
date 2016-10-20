FROM vcatechnology/centos:latest
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Install useful packages
RUN yum install -y \
  python \
  git \
  sudo 

# create a build-server user with sudo permissions & no password
RUN useradd -ms /bin/bash build-server && \
    echo "build-server ALL=(root) NOPASSWD:ALL" | tee -a /etc/sudoers.d/build-server && \
    echo "#includedir /etc/sudoers.d" >> /etc/sudoers && \
    chmod 755 /etc/sudoers.d && \
    chmod 0440 /etc/sudoers.d/build-server

# set the build-server user as default
WORKDIR /builds
USER build-server
