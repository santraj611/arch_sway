#!/bin/bash

DIR=$HOME/wallpapers/
PICS=($(ls ${DIR}))

RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}

if [[ $(pidof swaybg) ]]; then
    pkill swaybg
fi

swaybg -m fill -i ${DIR}/${RANDOMPICS}

