FROM debian:latest

LABEL "com.github.actions.name"="git lfs pull"
LABEL "com.github.actions.description"="Pulls all git lfs files that were added in the current commit."
LABEL "com.github.actions.icon"="download"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="https://github.com/brianfoshee/actions"
LABEL "homepage"="https://github.com/brianfoshee/actions"
LABEL "maintainer"="Brian Foshee <brian@brianfoshee.com>"

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
