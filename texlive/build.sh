#!/bin/sh
set -eux
NAME=dev
RELEASE=f$(rpm -E %fedora)

toolbox rm --force $NAME || true
toolbox create --release $RELEASE -c $NAME

toolbox run -c "$NAME" sh -exec '\
sudo dnf -y install glibc-langpack-en
sudo dnf -y install texlive-scheme-basic rubber
sudo dnf clean all
'
