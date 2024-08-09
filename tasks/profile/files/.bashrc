# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

export PATH="${HOME}/.local/bin:${PATH}"

for file in ${XDG_CONFIG_HOME}/profile.d/*.sh
do
    . $file
done

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias irc='ssh -t robin-server screen -r weechat'
alias cal='cal -mw'

alias ll='ls -lah --color=auto'
alias l.='ls -ldah .* --color=auto'
alias ls='ls --color=auto'

alias upgrade='sudo dnf --refresh upgrade -y'

alias generate_password='pwgen -sy 16'

. prompt.sh
