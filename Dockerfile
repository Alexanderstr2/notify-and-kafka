FROM alpine:latest

RUN apk add --no-cache inotify-tools bash kafkacat

COPY watcher.sh /watcher.sh

RUN chmod +x /watcher.sh

# Set default environment variables
ENV KAFKA_BROKERS=localhost:9092
ENV KAFKA_TOPIC=default_topic
ENV EVENTS=modify,create,delete

CMD ["/watcher.sh"]
