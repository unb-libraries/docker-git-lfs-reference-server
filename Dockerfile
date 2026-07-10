FROM golang:1.16-alpine

ENV LFS_LISTEN="tcp://:6983"
ENV LFS_HOST="localhost:6983"
ENV LFS_CONTENTPATH="/data"
ENV LFS_ADMINUSER="notadmin"
ENV LFS_ADMINPASS="notadminpass"
ENV LFS_SCHEME="http"

COPY ./scripts /scripts
RUN apk --update add git && \
  rm -f /var/cache/apk/* && \
  go get github.com/github/lfs-test-server && \
  go install github.com/github/lfs-test-server@latest

VOLUME /data
EXPOSE 6983

CMD /scripts/run.sh

LABEL ca.unb.lib.generator="lfs" \
  org.opencontainers.image.title="git-lfs-reference-server" \
  org.opencontainers.image.description="docker-git-lfs-reference-server is the base Git LFS reference server at UNB Libraries." \
  org.opencontainers.image.authors="Jacob Sanford <jsanford_at_unb.ca>" \
  org.opencontainers.image.url="https://github.com/unb-libraries/docker-git-lfs-reference-server" \
  org.opencontainers.image.source="https://github.com/unb-libraries/docker-git-lfs-reference-server" \
  org.opencontainers.image.version="$VERSION" \
  org.opencontainers.image.revision="$VCS_REF" \
  org.opencontainers.image.created="$BUILD_DATE"

