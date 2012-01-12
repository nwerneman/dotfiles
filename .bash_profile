alias l="ls -lahGp"
alias c="cd .."
alias n="nano --nohelp"
alias gpull="git pull origin master"
alias gpush="git commit -a -m \"meh \" && git push origin master"

# MacPorts Installer addition on 2012-01-11_at_09:33:47: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#export PS1="\[$(tput setaf 7)\]\H\n[\u@\[$(tput setaf 1)\]\h\[$(tput setaf 7)\]]\\$\[$(tput sgr0)\]"
export PS1="\[$(tput setaf 7)\][\u@\[$(tput setaf 1)\]\h:\w\[$(tput setaf 7)\]]\\$\[$(tput sgr0)\] "

export TITLEBAR='\[\033]0;\u@\h:\w \007\]'

# Terminal sets TERM_PROGRAM so we can tell it apart from regular VT100
case "$TERM_PROGRAM" in
"Apple_Terminal")PS1="$TITLEBAR$PS1"
esac
case "$TERM" in
"xterm")PS1="$TITLEBAR$PS1"
esac
#end insert

## To get rid of OS default folder display in titlebar
unset PROMPT_COMMAND
