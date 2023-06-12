#alias dotmate='mate $ZSH'
#alias dotcd='cd $ZSH'

alias reload!='. ~/.zshrc'
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ll --almost-all"
alias e="vim"

# My personal alias
alias kill_spring="kill -9 $(ps -ef | grep spring | grep -v grep | awk '{print $2}')"
# alias rs='rails s'
# alias rc='rails c'
alias rt='rspec '
alias be='bundle exec'
alias si='sudo apt-get install'
# alias tmux='TERM=screen-256color-bce tmux'
alias pairing='tmux new -s pairing'
alias esc='xmodmap ~/.xmodmap'
alias rebinstub='bundle exec rake rails:update:bin && bundle exec spring binstub --all'
