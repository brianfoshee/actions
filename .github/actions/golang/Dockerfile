FROM golang:1.11

LABEL "repository"="https://github.com/brianfoshee/actions"
LABEL "homepage"="https://github.com/brianfoshee/actions"

LABEL "com.github.actions.name"="Go Development Tools"
LABEL "com.github.actions.description"="Test and build Go projects"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="green"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
