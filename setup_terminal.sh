#!/bin/bash

# This script deploys my codified terminal preferences / setup.

################################################################
# Terminal Config Files
################################################################
# The following symbolic links are created in the HOME directory
# for the following source controlled files in this repository:
#
#  * .zshrc
#  * .tmux.conf
#  * .vimrc
#
# For custom, host-specific environment variables, a 
# .brightonsboxrc is created and then sourced in .zshrc

CUSTOM_SETTINGS_PATH=$HOME/.brightonsboxrc
REPOSITORY_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# If the custom settings already exist, don't override:
if ! [ -f "$CUSTOM_SETTINGS_PATH" ]; then
    cat > $CUSTOM_SETTINGS_PATH <<EOF
export PERSONAL_SCRIPTS_DIR=${REPOSITORY_DIR}
export PATH=\$HOME/bin:/usr/local/bin:\$PATH
EOF
fi

ln -sf $REPOSITORY_DIR/terminal/tmux/.tmux.conf $HOME/.tmux.conf
ln -sf $REPOSITORY_DIR/terminal/zsh/.zshrc $HOME/.zshrc
ln -sf $REPOSITORY_DIR/text_processing/vim/.vimrc $HOME/.vimrc

################################################################
# Commonly used scripts
################################################################
# Creating symbolic links of commonly used scripts to the ~/bin 
# directory
ln -sf $REPOSITORY_DIR/git/git-amend $HOME/bin/git-amend