FROM alpine:3.23.4@sha256:5b10f432ef3da1b8d4c7eb6c487f2f5a8f096bc91145e68878dd4a5019afde11

MAINTAINER MartinHerrman martin@herrman.nl

WORKDIR /

# update
RUN apk update
RUN apk upgrade

# install php
RUN apk add php
RUN apk add php-curl
RUN apk add php-openssl

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
