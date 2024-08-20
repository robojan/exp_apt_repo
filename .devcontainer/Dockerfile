FROM mcr.microsoft.com/devcontainers/base:jammy

# Install build tools
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends build-essential cmake \
    ninja-build expect curl git triehash libdb-dev libbz2-dev liblzma-dev \
    liblz4-dev libgcrypt-dev libxxhash-dev libgnutls28-dev docbook-xsl \
    doxygen googletest pkg-config libudev-dev libsystemd-dev libzstd-dev \
    libseccomp-dev po4a xsltproc w3m

RUN git config --global core.autocrlf input \
    && git config --global --add safe.directory /workspaces/exp_apt_repo/*
    && git config --global --add safe.directory /workspaces/exp_apt_repo