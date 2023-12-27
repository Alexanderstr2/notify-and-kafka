FROM alpine:latest

RUN apk add --no-cache inotify-tools bash

COPY watcher.sh /watcher.sh

RUN chmod +x /watcher.sh

CMD ["/watcher.sh"]
