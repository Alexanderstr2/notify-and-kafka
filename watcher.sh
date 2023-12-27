#!/bin/bash

if [[ -z "${DIRECTORY}" ]]; then
  echo "You must specify the directory to watch."
  exit 1
fi

if [[ ! -d "${DIRECTORY}" ]]; then
  echo "The specified directory does not exist. [$DIRECTORY]"
  exit 2
fi

if [[ -z "${COMMAND}" ]]; then
  echo "You must specify a command to execute."
  exit 3
fi

while true; do
  inotifywait -r -e "${EVENTS}" "${DIRECTORY}"
  eval "${COMMAND}"
  sleep 1
done
