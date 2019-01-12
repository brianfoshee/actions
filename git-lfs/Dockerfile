FROM debian:latest

LABEL "com.github.actions.name"="LFS Pull"
LABEL "com.github.actions.description"="Pull images from git lfs"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="yellow"

RUN build_deps="curl" && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends ${build_deps} ca-certificates git && \
    curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends git-lfs && \
    git lfs install && \
    DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove ${build_deps} && \
    rm -r /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
