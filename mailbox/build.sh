#!/bin/sh
set -eux
NAME=mailbox
RELEASE=f$(rpm -E %fedora)

toolbox rm --force $NAME || true
toolbox create --release $RELEASE -c $NAME

toolbox run -c "$NAME" sh -exec '\
sudo dnf -y install glibc-langpack-en
sudo dnf -y install vim mutt isync msmtp maildir-utils lynx
sudo dnf clean all
'

mkdir -p $HOME/.config/systemd/user/
cp mail.* $HOME/.config/systemd/user/

mkdir -p ~/Maildir/{Uni,Gmail}/{Inbox,Sent,Trash}

