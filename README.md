# OpenWRT_internet_detector
the simplest internet detector script for OpenWrt TL-MR3020
check if network unreachable
sum 3*10 pings & reboot device if packet loss sum greater or equal than 22

crontab started even 9 minutes, script has delay for 60 seconds

presets:

#touch /etc/crontabs/root

#ln -sf /etc/crontabs/root /etc/crontab

#/etc/init.d/cron start

#/etc/init.d/cron enable

#logread

#nano /etc/crontab

*/9 * * * * sh /usr/sbin/internet_check.sh

#/etc/init.d/cron restart
