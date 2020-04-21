#!/bin/sh
set -eux
NAME=fedora-ws-apps
RELEASE=f$(rpm -E %fedora)

toolbox rm --force $NAME || true
toolbox create --release $RELEASE -c $NAME

toolbox run -c "$NAME" sh -exec '\
sudo dnf -y install @Fonts \
	librsvg2 \
	file-roller \
	simple-scan \
	libsane-hpaio
sudo dnf clean all
'
