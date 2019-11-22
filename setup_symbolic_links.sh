#!/bin/bash

# This script creates symbolic links in the HOME directory
# for the following source controlled files in this repository:
#
#  * .zshrc
#  * .tmux.conf
#  * .vimrc

REPOSITORY_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

sed -i '' "s/export PERSONAL_SCRIPTS_DIR=.*/export PERSONAL_SCRIPTS_DIR=${REPOSITORY_DIR//\//\\/}/" $REPOSITORY_DIR/terminal/zsh/.zshrc

ln -sf $REPOSITORY_DIR/terminal/tmux/.tmux.conf ~/.tmux.conf
ln -sf $REPOSITORY_DIR/terminal/zsh/.zshrc ~/.zshrc
ln -sf $REPOSITORY_DIR/text_processing/vim/.vimrc ~/.vimrc

