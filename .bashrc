#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias c='clear'
alias e='exit'
alias l='ls'
alias grep='grep --color=auto'
alias la='ls -a'
alias ll='ls -alh'
alias ls='ls --color=auto'
alias ra="ranger"
alias t='function _t() { if [ -d "/tmp/test" ]; then cd "/tmp/test"; else mkdir "/tmp/test" && cd "/tmp/test"; fi }; _t'
alias fq="export https_proxy=http://127.0.0.1:7890;export http_proxy=http://127.0.0.1:7890;export all_proxy=socks5://127.0.0.1:7890"
alias src="source ~/.bashrc"


PS1='[\u@\h \W]\$ '
source /usr/share/nvm/init-nvm.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
