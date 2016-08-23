#!/bin/sh

# Startup script by I2obiN
# Requires mutt setup -- sends your WAN IP to an email address
# Add to crontab -e @reboot or for Ubuntu search "startup applications" and add the script file
# NB: Yahoo will not let you send smtp emails from your free account, use gmail

curl -s http://whatismijnip.nl | cut -d " " -f 5 | mutt -s "Your Subject" youremail@yahoo.com &&
echo "WAN IP - Recovery Email sent!"
# endline