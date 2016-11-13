# CentOS Docker CI Image

[![](https://images.microbadger.com/badges/image/vcatechnology/centos-ci.svg)](http://microbadger.com/images/vcatechnology/centos-ci "Image Layers") [![](https://images.microbadger.com/badges/version/vcatechnology/centos-ci.svg)](http://microbadger.com/images/vcatechnology/centos-ci "Image Version") [![](https://images.microbadger.com/badges/license/vcatechnology/centos-ci.svg)](https://microbadger.com/images/vcatechnology/centos-ci "Image License")  [![](https://images.microbadger.com/badges/commit/vcatechnology/centos-ci.svg)](https://github.com/vcatechnology/docker-centos-ci "Image Commit")

This container derives from
[vcatechnology/centos](https://hub.docker.com/r/vcatechnology/centos) so that the
image has the latest [CentOS](https://www.centos.org/) packages. It then
installs the some useful development packages.

Available on Docker Hub as [vcatechnology/centos-ci](https://hub.docker.com/r/vcatechnology/centos-ci/)

## `sudo`

The Docker image creates a user account 'build-server' with `sudo` permissions. The `sudo` password
is disabled to allow non-interactive sudo calls.
