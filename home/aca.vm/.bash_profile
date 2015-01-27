alias l='ls -w'
alias ll='ls -hal'
alias s='git status'
alias p='git pull'
alias d='git diff head'
alias pu='git push'
alias b='git branch'
alias c='git commit -a'
alias r='sudo service apache2 restart'
alias cu='php /usr/local/bin/composer update'
alias lg="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias lg1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#export PS1='[\u@\h \[\033[01;35m\]\w \[\033[00m\]] \$ '
export PS1="\[\e[38;5;233m\][\[\e[38;5;8m\]\u\[\e[38;5;241m\]@\[\e[38;5;88m\]ACA \[\e[38;5;34m\]\w\[\e[38;5;233m\]]\[\e[38;5;231m\]\$ \[\e[0m\]"