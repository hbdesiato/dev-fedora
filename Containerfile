FROM quay.io/fedora/fedora:latest
COPY --chmod=0444 upgrade.timestamp /opt/hbdesiato.github.io/upgrade.timestamp
RUN dnf -y upgrade && \
    dnf -y group install c-development development-tools container-management && \
    dnf -y install jq && \
    dnf clean all
