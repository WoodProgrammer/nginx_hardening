#!/bin/bash
HOST=$1

if wget -q --user-agent "I am a bandit haha" $HOST ;
then
    echo "You Have User Agent Error >> assing_service.sh"
else
    echo "OK "
fi;
