# OpenWRT_internet_detector
the simplest internet detector script for OpenWrt TL-MR3020
sum 3*10 pings & reboot device if packet loss sum greater or equal than 22

crontab started even 10 minutes

presets:
#touch /etc/crontabs/root

#ln -sf /etc/crontabs/root /etc/crontab

#/etc/init.d/cron start

#/etc/init.d/cron enable

#logread

#nano /etc/crontab

*/10 * * * * sh /usr/sbin/internet_check.sh

#/etc/init.d/cron restart
