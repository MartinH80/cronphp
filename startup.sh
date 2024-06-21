# start syslog daemon
/sbin/syslogd

# replace busybox sendmail with msmtp
ln -sf /usr/bin/msmtp /usr/bin/sendmail
ln -sf /usr/bin/msmtp /usr/sbin/sendmail

# load crontab file
crontab /crontab

# run cron daemon in foreground
crond -f
