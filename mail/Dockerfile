FROM registry.fedoraproject.org/f32/fedora-toolbox
LABEL maintainer "Damian Ludwig <mail@damianludwig.org>"

RUN dnf install -y \
	mutt \
	isync \
	msmtp \
	maildir-utils \
	lynx \
	vim-enhanced \
	&& dnf clean all
