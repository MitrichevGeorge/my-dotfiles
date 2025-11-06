alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias vi='vim'
mkcd(){
    mkdir $1 && cd $1
}
alias sta='eval "$(starship init bash)"'
