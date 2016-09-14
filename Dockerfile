FROM vcatechnology/centos:latest
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Install useful packages
RUN yum install -y \
  python \
  git \
  sudo 
