### ZSH Config
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# update automatically without asking
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 30

plugins=(git)
source $ZSH/oh-my-zsh.sh


### Environment
export EDITOR='vim'
export HISTFILESIZE=10000000
export HISTSIZE=10000000
export SAVEHIST=10000000


### Prompt / PS1
#PROMPT="$%{$fg[cyan]%}[%{$fg[magenta]%}%~%{$fg[cyan]%}]%{$reset_color%}$(git_prompt_info)%{$fg[blue]%}→%{$reset_color%} "
PROMPT="$%{$fg[cyan]%}[%{$fg[magenta]%}%~%{$fg[cyan]%}]%{$reset_color%}%{$fg[blue]%}→%{$reset_color%} "


### Aliases
alias ll="ls -lhA"
alias ls="ls -G"
alias mv="mv -v"
alias rm="rm -vi"
alias cp="cp -v"

alias grep="grep --color=always"

alias tetris="tetris -nomenu"

#alias python=python3

### Directories
alias dev="cd ~/dev && ls"
alias code="cd ~/dev/code && ls"


### Applications
#alias c="pbcopy"
#alias p="pbpaste"
#alias cdiff='diff -wayd -W$(tput cols) --suppress-common-lines'
#alias idea="open -a /Applications/IntelliJ\ IDEA.app/"


### Languages
# JAVA
#export JAVA_HOME=
#export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"


# NVM
export NVM_DIR="$HOME/.nvm"
# load nvm
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
# load nvm bash_completion
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"


### Utils
alias vzp="vim ~/.zshrc"
alias vbp="vzp"
alias szp="source ~/.zshrc"
alias sbp="szp"


### Functions
# Find in place
fip() { find . -iname "*$1*"; }

# Grep in place
gip() { grep "$@" . -iR; }

# Get IP
myip() {
    echo "LAN:"
    ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}'

    echo "WAN:"
    curl icanhazip.com

   # echo "HTTP_PROXY:"
   # echo $HTTP_PROXY
   # nslookup $HTTP_PROXY | sed -E -n 's/^Server:(.*)$/\1/p' | trim

   # echo "HTTPS_PROXY:"
   # echo $HTTPS_PROXY
   # nslookup $HTTPS_PROXY | sed -E -n 's/^Server:(.*)$/\1/p' | trim
}

# Remove whitespace
trim() {
    awk '{$1=$1};1'
}


