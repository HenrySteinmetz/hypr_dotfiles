#!/bin/bash

hyprctl dispatch -- exec "[workspace 6; monitor HDMI-A-1] env LD_PRELOAD=/usr/lib/spotify-adblock.so spotify --uri=%U"
