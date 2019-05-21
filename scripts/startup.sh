#!/usr/bin/env bash

START_TIME_WAIT=5

# workspace 0
wmctrl -s 0
google-chrome

# workspace 1
wmctrl -s 1
phpstorm > /dev/null 2>&1 &
sleep $START_TIME_WAIT # Sleep to start phpstorm process.  Gnome will create additional workspace in this time

# workspace 2
wmctrl -d 
wmctrl -s 2
~/DataGrip-2018.3.1/bin/datagrip.sh > /dev/null 2>&1 &
sleep $START_TIME_WAIT 

# Start daemon process and return to work space 0
rescuetime
wmctrl -s 0



# Start Applications
#GUAKE=$(guake > /dev/null 2>&1 &)

#CHROME=$(google-chrome > /dev/null 2>&1 &)
#PHP_STORM=$(phpstorm > /dev/null 2>&1 &)


# Configure Window Control 
#wmctrl -n 8
#wmctrl -r google-chrome  -e 0,5120,1600,-1,-1
