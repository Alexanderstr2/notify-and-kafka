# notify-and-Kafka 🔊
> Watch a directory and push a new event to a Kafka topic!
If looking to trigger an arbitrary shell command take a look at [notify-and-bash](https://github.com/brarsanmol/notify-and-bash) 

# installation

1. **docker compose**
```yaml
version: "3.8"

services:
    image: alexanderstr2/notify-and-kafka:latest
    container_name: notify-and-kafka
    environment:
        - KAFKA_TOPIC=default_topic
        - KAFKA_BROKERS=localhost:9092
        - EVENTS=modify,create,delete
      	- DIRECTORY=/my_dir_to_watch/
      	- COMMAND=bash /watch-dir.sh
      	- volumes:
      	    - "/home/user/my_dir_to_watch:/my_dir-to_watch/"
            - "/home/user/watch-dir.sh:/watch-dir.sh"
```

# authors
* [Anmol Brar](mailto:hey@anmolbrar.ca?subject=[notify-and-bash])
* [Alexander Stratmoen](mailto:hello@alexanderstratmoen.ca?subject=[notify-and-kafka])

# license
this project is licensed underneath the [mit license](https://github.com/Alexanderstr2/notify-and-kafka/LICENSE).
