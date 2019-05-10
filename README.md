# MorningSpotify
A Fully function cron spotify alarm clock that can play one track in the morning. To play a playlist that is randomized, you need to downgrade to spotify 0.9 because they didn't keep up support for mpris in the new version


#THIS INFORMATION IS ALSO IN thecroncommand

#To enter this command into crontab, do the following:

crontab -e

#Go to the bottom of the file, and enter:

#The first columb is the minutes, second is the hour. Google how to set up days of the week to monitor that, its pretty easy
22 12 * * * DISPLAY=:0 ~/Documents/Summer\ 2019/MorningSpotify/Ascendancy.sh

#Once your done with this, go into the Ascendancy.sh file and open spotify. Navigate to the song you want, click on "share" and then "copy Uri"
#Paste this uri into the "uri='blah'" section of the Ascendancy.sh file
