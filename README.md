# MorningSpotify
A Fully function cron spotify alarm clock that can play one track in the morning. To play a playlist that is randomized, you need to downgrade to spotify 0.9 because they didn't keep up support for mpris in the new version

# INSTRUCTIONS:
# Step 1: To enter this command into crontab, do the following:

crontab -e

# Step 2: Go to the bottom of the file, and enter:

22 12 * * * DISPLAY=:0 ~/Documents/Summer\ 2019/MorningSpotify/Ascendancy.sh
# (The first columb is the minutes, second is the hour. Google how to set up days of the week to monitor that, its pretty easy)

# Step 3: Change ~/Documents/summer etc to the path to Ascendancy.sh that you downloaded


# Step 4: Open Spotify and find the song you want to play. Click on the three little dots to the right of it, find "share" and click on "copy spotify URI"
# Step 5: Navigiate to the "MorningSpotify" directory and type "python3 updateMorning.py" when prompted, paste in the spotify URI by using ctrl-shift-V
# Step 6" enter this command

sudo systemctl restart cron

# And you're done!
