# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jueves/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Some plugins
source /usr/share/autojump/autojump.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Some aliases
alias ls='lsd --icon-theme unicode'
alias ll='lsd -l --icon-theme unicode'
alias la='lsd -a --icon-theme unicode'
alias lla='lsd -la --icon-theme unicode'
alias lt='lsd --tree --icon-theme unicode'

# Starship Prompt
eval "$(starship init zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jueves/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jueves/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jueves/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jueves/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

