#!/bin/sh
#
# Pushover
# Uses pushover.net to push notifications to your phone
#

# Look for the config file and source it for TOKEN and USER env variables
CONFIG="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../data/pushover.config"
if [ -e $CONFIG ]; then
  source $CONFIG
fi

# Only create the function if
function push {
  if [ -z "$TOKEN" ]; then
    >&2 echo "Pushover not setup.  Please set TOKEN and USER in $CONFIG"
  else
    HOST=`hostname`
    RESULT=`curl -s \
     -F "token=$TOKEN" \
     -F "user=$USER" \
     -F "title=$HOST" \
     -F "message=$1" \
     https://api.pushover.net/1/messages \
     `
    # TODO parse result
    echo $RESULT
  fi
}
