#!/bin/sh
set -eux
NAME=dev
RELEASE=f$(rpm -E %fedora)

toolbox rm --force $NAME || true
toolbox create --release $RELEASE -c $NAME

toolbox run -c "$NAME" sh -exec '\
sudo dnf -y install glibc-langpack-en
sudo dnf -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel javacc
sudo dnf -y install gcc make git
sudo dnf -y install vim
sudo dnf clean all
'
