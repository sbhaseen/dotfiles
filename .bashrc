# Git branch info if present
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom prompt with Git info

# GitBash style prompt
# export PS1="\[\033[36m\]\u@\h\[\033[00m\] \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] \n\[\033[1;31m\]>>\[\033[00m\] "

# Ubuntu/Debian style prompt
# export PS1="\[\033[36m\]\u@\h\[\033[00m\] \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] \[\033[1;31m\]$\[\033[00m\] "

# Color Variables
COLOR_USER="\[\033[36m\]"
COLOR_ENTRY="\[\033[00m\]"
COLOR_DIR="\[\033[32m\]"
COLOR_GIT="\[\033[33m\]"
COLOR_PROMPT="\[\033[1;31m\]"

# Ubuntu/Debian style prompt with color variables
export PS1="${COLOR_USER}\u@\h ${COLOR_DIR}\w${COLOR_GIT}\$(parse_git_branch) ${COLOR_PROMPT}$ ${COLOR_ENTRY}"
