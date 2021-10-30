#!/bin/sh

WIDTH=`tmux display -p "#{client_width}"`
NUMBER_OF_WINDOWS=`tmux display -p "#{session_windows}"`
WINDOW_PENALTY=`expr 15 \* $NUMBER_OF_WINDOWS`
MID_WIDTH=`expr 80 + $WINDOW_PENALTY`
MIN_WIDTH=`expr 60 + $WINDOW_PENALTY`

if [ "$WIDTH" -ge "$MID_WIDTH" ]; then
echo "\
#[fg=colour15] $($PERSONAL_SCRIPTS_DIR/terminal/tmux/tmux_battery_charge_indicator.sh) \
#[fg=colour39, bg=colour237] \
#[fg=colour237, bg=colour39] Jon Brighton \
#[fg=colour15, bg=colour237] $(date +'%D')\
#[fg=colour196]  \
#[fg=colour15]$(date +'%H:%M') "

elif [ "$WIDTH" -ge "$MIN_WIDTH" ]; then
echo "\
#[fg=colour39, bg=colour237] \
#[fg=colour237, bg=colour39] JB \
#[fg=colour15, bg=colour237] $(date +'%D')\
#[fg=colour196]  \
#[fg=colour15]$(date +'%H:%M') "
fi
