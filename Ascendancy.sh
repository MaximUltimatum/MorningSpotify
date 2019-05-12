#!/bin/bash
# (should) Open spotify to a playlist and runs it
songURI=spotify:track:3QV7NYkrmV0Q0IHdFJw9hO
#This umutes the master volume, and headphone and speaker volume (all three lines needed)
amixer sset Master unmute
amixer sset Headphone unmute
amixer sset Speaker+LO unmute
amixer -D pulse sset Master 10%

#this opens spotify to song "Ascendancy." Change the '' to a spotify uri under "share" part for a song. & makes it run in background so we can cancel out to manipulate volume
spotify --uri="$songURI#0:0.01"&

#Delay to let spotify open, then cancel out of the terminal
sleep 4
#'^C'

#This slowly fades in song for gentle wake up. Comment out for a Morning Jolt
for i in {1..9}
do
	sleep 2
	amixer -D pulse sset Master 5%+
done

