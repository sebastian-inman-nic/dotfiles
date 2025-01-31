# default PATH
export PATH="/usr/local/bin:$PATH"

# include user bin path
export PATH="$HOME/bin:$PATH"

# git-credential-netrc needs perl inteface for git
# fix perl location that was moved in OS X Mojave
export PERLLIB=/Library/Developer/CommandLineTools/usr/share/git-core/perl:$PERLLIB

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

# brew
export PATH="/opt/homebrew/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="~/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"