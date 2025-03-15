FROM alpine:3.21.3@sha256:a8560b36e8b8210634f77d9f7f9efd7ffa463e380b75e2e74aff4511df3ef88c

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
