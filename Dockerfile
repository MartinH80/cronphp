FROM alpine:3.22.4@sha256:310c62b5e7ca5b08167e4384c68db0fd2905dd9c7493756d356e893909057601

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
