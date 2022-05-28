termux-wake-lock
neofetch
PROMPT_DIRTRIM=2
PS1="\[\033[1;92m\]\u@\h\[\033[0;32m\] \w \[\033[0;37m\]\$\[\033[0m\] "
eval "`dircolors`"
alias ls='ls --color=auto'
alias ll='ls --color=auto -lshaF'
alias grep='grep --color=auto'

alias fbig="find . -size +128M -type f -printf '%s %p\n'| sort -nr | head -16"
alias rdir='mkdir -p ./$(cat /dev/urandom | tr -cd 'a-z0-9' | head -c 8)/$(cat /dev/urandom | tr -cd 'a-z0-9' | head -c 4)/'

export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000
export HISTFILESIZE=100000
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

shopt -s checkwinsize
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

