#!/bin/sh
set -eux
NAME=texlive
RELEASE=f$(rpm -E %fedora)

toolbox rm --force $NAME || true
toolbox create --release $RELEASE -c $NAME

toolbox run -c "$NAME" sh -exec '\
sudo dnf -y install glibc-langpack-en
sudo dnf -y install texlive-collection-basic \
	texlive-collection-latex \
	texlive-collection-mathscience \
	texlive-collection-pictures \
	texlive-collection-langgerman \
	texlive-collection-latexrecommended \
	rubber
sudo dnf clean all
'
