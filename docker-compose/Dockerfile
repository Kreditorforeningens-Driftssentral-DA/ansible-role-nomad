FROM centos:8

ENV GO_ARCHIVE go1.13.5.linux-amd64.tar.gz

RUN set -x \
    dnf upgrade -y && \
    dnf group install "Development Tools" && \
    curl -fsSL -O https://dl.google.com/go/${GO_ARCHIVE} && \
    tar xzf ${GO_ARCHIVE} -C / && \
    go env -w GOPATH=${HOME}/go && go env -w GOROOT=/go && \
    mkdir -p $GOPATH/src/github.com/hashicorp && cd $_ && \
    git clone https://github.com/hashicorp/nomad.git && cd nomad && \
    make bootrtrap && \
