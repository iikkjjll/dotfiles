# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
# plug "romkatv/powerlevel10k"
plug "Aloxaf/fzf-tab"

# Load and initialise completion system
autoload -Uz compinit
compinit

source /home/luck/.local/share/zap/plugins/fzf-tab/fzf-tab.plugin.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
set -o emacs





alias mv="mv -i"
alias rm="rm -i"
alias c='clear'
alias e='exit'
alias l='ls -lh'
alias grep='grep --color=auto'
alias la='ls -a'
alias ll='ls -alh'
alias ls='ls --color=auto'
alias ra="ranger"
alias t='function _t() { if [ -d "/tmp/test" ]; then cd "/tmp/test"; else mkdir "/tmp/test" && cd "/tmp/test"; fi }; _t'
alias fq="export https_proxy=http://127.0.0.1:7890;export http_proxy=http://127.0.0.1:7890;export all_proxy=socks5://127.0.0.1:7890"
alias fqa="export https_proxy=http://127.0.0.1:20172;export http_proxy=http://127.0.0.1:20171;export all_proxy=socks5://127.0.0.1:20170"
alias v="nvim"
# alias vi="vim"
# alias vim="nvim"
alias mem="sudo ps_mem"
alias src="source ~/.zshrc"
alias lg='lazygit'
alias va="sudo v2raya"
alias N="nvim ~/.v2raya_nodes_backup.txt"
# alias jo="joshuto"
# alias cat="bat"

# alias for git
alias gst="git status"
alias ga="git add"
alias gaa="git add ."
alias glog="git log --oneline"
alias gcm="git commit -m"

# navigation quickly
alias god="cd ~/app/dwm"
alias gost="cd ~/app/st"
alias gosl="cd ~/app/slstatus"
alias gon="cd ~/notes"
alias gov="cd ~/.config/nvim"
alias gojo="cd ~/.config/joshuto"
alias godo="cd ~/dotfiles"






# for nvm: node.js version manager
source /usr/share/nvm/init-nvm.sh





# [[ -s /home/luck/.autojump/etc/profile.d/autojump.sh ]] && source /home/luck/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u





# for fzf: fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh



# export some envs.
export PATH=$PATH:/home/luck/.local/share/bob/nvim-bin/
export EDITOR=nvim
export HISTSIZE=5000

# don't export this variable
# export DISPLAY=xsel




[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh




if [[ "$TERM" == "linux" ]]; then
  alias s="startx"
elif [[ "$TERM" == "st-256color" ]]; then
  alias s="neofetch"
fi

