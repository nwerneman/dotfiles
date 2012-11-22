OS=$(uname -s)

#echo $OS

if [ "$OS" == "Linux" ]; then
	echo "I'm on Linux"
	alias l="ls -lahpG"
        alias c="clear"
        alias n="nano --nohelp"
        alias cl="c && l"
        alias gpull="git pull origin master"
	export PS1="\[$(tput setaf 7)\][\u@\[$(tput setaf 1)\]\h:\w\[$(tput setaf 7)\]]\\$\[$(tput sgr0)\] "	
	fi




if [ "$OS" == "Darwin" ]; then
	echo "I'm on Darwin"
	alias l="ls -lahpG"
	alias c="clear"
	alias n="nano --nohelp"
	alias cl="c && l"
	alias gpull="git pull origin master"
	alias gpush="git commit -a -m \"meh \" && git push origin master"
	alias mc="mc -S xoria256"
	export EDITOR="/usr/bin/nano"
	export VIEWER="/usr/bin/less"
	export PATH=/opt/local/bin:/opt/local/sbin:/sw/bin:$PATH
	export PS1="\[$(tput setaf 7)\][\u@\[$(tput setaf 1)\]\h:\w\[$(tput setaf 7)\]]\\$\[$(tput sgr0)\] "
	export TITLEBAR='\[\033]0;\u@\h:\w \007\]'
	# Terminal sets TERM_PROGRAM so we can tell it apart from regular VT100
	#case "$TERM_PROGRAM" in
	#"Apple_Terminal")PS1="$TITLEBAR$PS1"
	#esac
	#case "$TERM" in
	#"xterm")PS1="$TITLEBAR$PS1"
	#esac
	#end insert
	## To get rid of OS default folder display in titlebar
	#unset PROMPT_COMMAND
	fi
