# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

eval "$(starship init bash)"

alias ls='lsd --icon-theme unicode'
alias ll='lsd -l --icon-theme unicode'
alias la='lsd -a --icon-theme unicode'
alias lla='lsd -la --icon-theme unicode'
alias lt='lsd --tree --icon-theme unicode'
