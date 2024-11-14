FROM alpine:3.20.3@sha256:1e42bbe2508154c9126d48c2b8a75420c3544343bf86fd041fb7527e017a4b4a

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
