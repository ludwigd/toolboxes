FROM registry.fedoraproject.org/f32/fedora-toolbox
LABEL maintainer "Damian Ludwig <mail@damianludwig.org>"

RUN dnf install -y \
	texlive-collection-basic \
	texlive-collection-latex \
	texlive-collection-mathscience \
	texlive-collection-pictures \
	texlive-collection-langgerman \
	texlive-collection-latexrecommended \
	rubber \
	&& dnf clean all
