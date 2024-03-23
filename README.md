# demo-crontab

![cron](./images/cron.png)

## Quick Start

This repo starts a docker container that runs series of cronjobs written in Python and log the output to the terminal session. The container is based on the `Debian` image. It run the`/container/crontab/crontab.sh` script as a command through a `/bin/bash` entrypoint.

This next makefile command will build the docker image and start the container. You can see the logs in the terminal session.

```bash
make start
```

To view the logs in the container, you can run located in the `Makefile`under the `exec` target.

```bash
make exec

cat output.log
```

This is a quick demo to show how to run a cron job inside a docker container. This docker container is using the `Debian` image.
