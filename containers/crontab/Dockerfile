FROM python:3.9

COPY . /app

WORKDIR /app

RUN apt-get clean && apt-get update -y && \
    apt-get install --no-install-recommends -y -q ca-certificates \
    build-essential locales nano

RUN apt-get install cron -y
RUN apt-get install nano-tiny -y

# RUN pip3 install -r /app/requirements.txt


ENTRYPOINT ["/bin/bash"]