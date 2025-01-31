# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/jng/.oh-my-zsh

# Hide username in prompt
DEFAULT_USER="sebastian"

# -- ZSH config --

# ZSH Plugins
plugins=(git z)

source $ZSH/oh-my-zsh.sh

# -- User config --

# Set language encoding
export LANG=en_US.UTF-8

# -- Custom Setup --

# Load default dotfiles
source ~/.bash_profile
fpath=( "$HOME/.zfunctions" $fpath )

# -- Spacespace theme --

# Make prompt like pure prompt
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_PACKAGE_SHOW="false"
SPACESHIP_DIR_COLOR="blue"

# removes 'on'
SPACESHIP_GIT_PREFIX=""

# remove git symbol
SPACESHIP_GIT_BRANCH_PREFIX=""

SPACESHIP_GIT_BRANCH_COLOR="black"
SPACESHIP_GIT_STATUS_COLOR="black"
SPACESHIP_GIT_STATUS_PREFIX=" ["
SPACESHIP_GIT_STATUS_SUFFIX="]"

# remove prompt noise
SPACESHIP_BATTERY_SHOW="false"

# remove google cloud
SPACESHIP_GCLOUD_SHOW="false"
SPACESHIP_AZURE_SHOW="false"

# zsh syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters

# Use spaceship theme (must be last)
source /opt/homebrew/opt/spaceship/spaceship.zsh