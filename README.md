# notify-and-bash 🔊
> watch a directory and execute a command or shell script when events occur!

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

2. **command / script**
```bash
#!/bin/bash

echo "An event has occurred with a file in the directory being watched!"
```

# authors
* [Anmol Brar](mailto:hey@anmolbrar.ca?subject=[notify-and-bash])
* [Alexander Stratmoen](mailto:hello@alexanderstratmoen.ca?subject=[notify-and-kafka])

# license
this project is licensed underneath the [mit license](https://github.com/Alexanderstr2/notify-and-kafka/LICENSE).
