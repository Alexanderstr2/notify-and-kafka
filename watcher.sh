#!/bin/bash

# Check if necessary environment variables are set
if [[ -z "${DIRECTORY}" ]]; then
  echo "You must specify the directory to watch."
  exit 1
fi

if [[ ! -d "${DIRECTORY}" ]]; then
  echo "The specified directory does not exist. [$DIRECTORY]"
  exit 2
fi

if [[ -z "${KAFKA_BROKERS}" ]]; then
  echo "You must specify Kafka brokers."
  exit 3
fi

if [[ -z "${KAFKA_TOPIC}" ]]; then
  echo "You must specify a Kafka topic."
  exit 4
fi

if [[ -z "${EVENTS}" ]]; then
  echo "You must specify the file system events to monitor."
  exit 5
fi

# Main loop to watch directory and send events to Kafka
while true; do
  inotifywait -r -e "${EVENTS}" "${DIRECTORY}" | while read path action file; do
    echo "Event $action occurred on $file in $path" | \
    kafkacat -b "${KAFKA_BROKERS}" -t "${KAFKA_TOPIC}" -P
  done
  sleep 1
done
