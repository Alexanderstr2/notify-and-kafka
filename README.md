# notify-and-bash 🔊
> watch a directory and execute a command or shell script when events occur!

# installation

1. **docker compose**
```yaml
version: "3.8"

services:
    image: brarsanmol/notify-and-bash:latest
    container_name: notify-and-bash
    environment:
      	- EVENTS=close_write
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

# license
this project is licensed underneath the [mit license](https://github.com/brarsanmol/notify-and-bash/LICENSE).
