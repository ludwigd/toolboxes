FROM registry.fedoraproject.org/f32/fedora-toolbox
LABEL maintainer "Damian Ludwig <mail@damianludwig.org>"

RUN dnf install -y \
        @Fonts \
        librsvg2 \
        simple-scan \
        libsane-hpaio \
        && dnf clean all