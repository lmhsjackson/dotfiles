#alias dotmate='mate $ZSH'
#alias dotcd='cd $ZSH'

alias reload!='. ~/.zshrc'
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ll --almost-all"

# My personal alias
alias rs='bin/rails s'
alias rc='bin/rails c'
alias rt='bin/rspec '
alias be='bundle exec'
alias si='sudo apt-get install'
alias sr='sudo apt-get remove --purge'
# alias tmux='TERM=screen-256color-bce tmux'
alias pairing='tmux new -s pairing'
alias esc='xmodmap ~/.xmodmap'
alias rebinstub='bundle exec rake rails:update:bin && bundle exec spring binstub --all'
