FROM vcatechnology/centos:latest
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Install useful packages
RUN yum install -y \
  python \
  git \
  sudo 

# create a buildslave user with sudo permissions & no password
RUN useradd -ms /bin/bash buildslave && \
    echo "buildslave ALL=(root) NOPASSWD:ALL" | tee -a /etc/sudoers.d/buildslave && \
    echo "#includedir /etc/sudoers.d" >> /etc/sudoers && \
    chmod 755 /etc/sudoers.d && \
    chmod 0440 /etc/sudoers.d/buildslave

# set the buildslave user as default
WORKDIR /builds
USER buildslave
