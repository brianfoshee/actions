# https://medium.com/@mudflye/headless-ember-tests-in-gitlab-with-docker-fd5f05eef436
FROM node:10-alpine

RUN npm config set unsafe-perm true

RUN apk update && \
    apk add git

# Installs latest Chromium package.
RUN echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories \
    && echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories \
    && apk add --no-cache \
    chromium@edge \
    nss@edge \
    freetype@edge \
    harfbuzz@edge \
    && rm -rf /var/cache/*

# Testem looks for google-chrome
RUN ln -s /usr/bin/chromium-browser /usr/bin/google-chrome

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
