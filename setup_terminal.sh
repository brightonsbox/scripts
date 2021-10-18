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
#  * .gitconfig
#  * .gitignore_global
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
ln -sf $REPOSITORY_DIR/git/config/.gitconfig $HOME/.gitconfig
ln -sf $REPOSITORY_DIR/git/config/.gitignore_global $HOME/.gitignore_global

################################################################
# Commonly used scripts
################################################################
# Creating symbolic links of commonly used scripts to the ~/bin 
# directory
mkdir -p $HOME/bin
ln -sf $REPOSITORY_DIR/git/bin/git-amend $HOME/bin/git-amend
ln -sf $REPOSITORY_DIR/git/bin/git-amend-nv $HOME/bin/git-amend-nv
ln -sf $REPOSITORY_DIR/docker/docker-stop-all $HOME/bin/docker-stop-all
ln -sf $REPOSITORY_DIR/docker/docker-system-prune-volumes $HOME/bin/docker-system-prune-volumes
