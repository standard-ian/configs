#command history
HISTSIZE=3000
HISTFILESIZE=3000
HISTCONTROL=ignoreboth

#radix converters
#use format specifiers '<base>#<integer>'
function bin(){
   echo "obase=2; $(($1))" | bc
}
function dec(){
   echo "obase=10; $(($1))" | bc
}
function hex(){
   echo "obase=16; $(($1))" | bc
}
function oct(){
   echo "obase=8; $(($1))" | bc
}

# Looks for an aliases file and uses it if it exists
if [ -f ~/.bash_aliases ] ; then
  source ${HOME}/.bash_aliases
fi

if [[ "$TERM" == "alacritty" ]]; then
    export TERM=xterm-256color
fi

export CLICOLOR=1
export LANG="en_US.UTF-8"

#color background "poweline" style prompts
#greyscale (change <256color>m to change colors.)
#PS1="[set fg 247m][set bg 0m] <username> [set bg 237m][set fg 0m][set fg 0m] <hostname> [set bg 243m][set fg 237m][set fg 16m][set italics] <date> <time> [clear all codes][set bg 249m][set fg 243m][set fg 16m] <pwd> [clean all codes fg and bg][set fg 249][clear all codes]

# 1. 230
# 2. 210
# 3. 219
# 4. 225
PS1="\[\033[38;5;16m\]\[\033[48;5;230m\] \u \[\033[48;5;210m\]\[\033[38;5;230m\]\[\033[38;5;16m\] \h \[\033[48;5;219m\]\[\033[38;5;210m\]\[\033[38;5;16m\]\[\033[3m\] \d \t \[\033[00m\]\[\033[48;5;225m\]\[\033[38;5;219m\]\[\033[38;5;16m\] \w \[\033[00m\]\[\033[38;5;225m\] \[\033[00m\]"

export EDITOR="vim"


