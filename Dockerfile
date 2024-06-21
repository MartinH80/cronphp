FROM alpine:3.20.1@sha256:b89d9c93e9ed3597455c90a0b88a8bbb5cb7188438f70953fede212a0c4394e0

MAINTAINER MartinHerrman martin@herrman.nl

WORKDIR /

# update
RUN apk update
RUN apk upgrade

# install php
RUN apk add php

# install msmtp and mailx to have cron send mail
RUN apk add msmtp
RUN apk add mailx

# make directory for scripts executed by cron
RUN mkdir /scripts

# Add dummy script
ADD dummy.php /scripts/dummy.php

# Add dummy crontab file
ADD crontab /crontab

# copy startup script
ADD startup.sh /startup.sh

# Execute startup script
CMD ["/bin/sh","-c","/startup.sh"]
