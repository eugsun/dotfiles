export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Conda
run_if_exists "$HOME/miniconda3/etc/profile.d/conda.sh"

# Poetry
run_if_exists "$HOME/.poetry/env"

# Haskell
run_if_exists "$HOME/.ghcup/env"

# NVM
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Lua
if which luaenv > /dev/null; then eval "$(luaenv init -)"; fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
run_if_exists "$HOME/.rvm/scripts/rvm"
