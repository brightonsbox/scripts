#!/bin/sh

SESSION_NAME=`tmux display -p "#S"`
if [ "$SESSION_NAME" = "default" ]; then
    SESSION_TITLE=`uname -n`
else
    SESSION_TITLE=$SESSION_NAME
fi 


echo "\
#[fg=colour15, bg=colour241]#{?client_prefix,#[bg=colour196],} $($PERSONAL_SCRIPTS_DIR/terminal/tmux/tmux_web_connection.sh) $SESSION_TITLE \
#[fg=colour241, bg=colour237]#{?client_prefix,#[fg=colour196],}\
#[fg=colour15]  "
