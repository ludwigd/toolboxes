FROM registry.fedoraproject.org/f32/fedora-toolbox
LABEL maintainer "Damian Ludwig <mail@damianludwig.org>"

RUN dnf install -y \
	java-1.8.0-openjdk \
	java-1.8.0-openjdk-devel \
	javacc \
	gcc \
	make \
	git \
	vim-enhanced \
	&& dnf clean all
