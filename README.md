# demo-crontab

![cron](./images/cron.png)

## Quick Start

This repo starts a cron job to run every 5 minutes inside a docker container and log the output to the terminal session.

```bash
make start
```

THis will build the docker image and start the container. You can see the logs in the terminal session.

To view the logs in the container, you can run located in the `Makefile`under the `exec` target.

```bash
make exec
```

This is a quick demo to show how to run a cron job inside a docker container. This docker container is using the `Debian` image.
