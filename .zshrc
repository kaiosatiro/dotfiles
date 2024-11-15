# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/css/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Python poetry config
export PATH="/home/css/.local/bin:$PATH"
fpath+=~/.zfunc
autoload -Uz compinit && compinit

# Plugins
plugins=(virtualenv)

#export VIRTUAL_ENV_DISABLE_PROMPT=0

zstyle ':completion:*' menu select
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
alias hyprconf='vim /home/css/.config/hypr/hyprland.conf'
alias neofetch='neofetch --source .config/neofetch/arch'
