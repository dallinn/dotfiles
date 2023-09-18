export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# update automatically without asking
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 30

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh


### Environment ###

export EDITOR='vim'
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000

#PROMPT="$%{$fg[cyan]%}[%{$fg[magenta]%}%~%{$fg[cyan]%}]%{$reset_color%}$(git_prompt_info)%{$fg[blue]%}→%{$reset_color%} "
PROMPT="$%{$fg[cyan]%}[%{$fg[magenta]%}%~%{$fg[cyan]%}]%{$reset_color%}%{$fg[blue]%}→%{$reset_color%} "


### Aliases ###

alias ll="ls -lhA"
alias ls="ls -G"
alias mv="mv -v"
alias rm="rm -vi"
alias cp="cp -v"

alias grep="grep --color=always"

alias tetris="tetris -nomenu"

## Directories
alias dev="cd ~/dev && ls"
alias code="cd ~/dev/code && ls"

## Applications
#alias c="pbcopy"
#alias p="pbpaste"
#alias cdiff='diff -wayd -W$(tput cols) --suppress-common-lines'
#alias idea="open -a /Applications/IntelliJ\ IDEA.app/"

## Languages
#export JAVA_HOME=

## Utils
alias vzp="vim ~/.zshrc"
alias vbp="vzp"
alias szp="source ~/.zshrc"
alias sbp="szp"

### Functions
# Find in place
fip() { find . -iname "*$1*"; }

# Grep in place
gip() { grep "$@" . -iR; }

#logger() {
#    grc -c ~~/.grc/grc.conf tail -f -n 0 ${find . -type f -not -path "./Archive/*")
#}

# Search .war path
#swp() { echo $(pwd && find . -name "*war") | sed 's/ \.//'; }

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

