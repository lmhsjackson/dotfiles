#!/bin/sh

# Run yard documentation server if it is not already running.
SERVICE='yard'

if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
    echo "$SERVICE already running"
else
    RUBYOPTS="" yard server -rdg -s thin
fi

