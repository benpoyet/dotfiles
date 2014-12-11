source ~/.bashrc

alias setJdk7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias setJdk8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'
alias v='vim'

source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\W\[\033[01;31m\]$(__git_ps1)\[\033[01;32m\] \$\[\033[00m\] '
