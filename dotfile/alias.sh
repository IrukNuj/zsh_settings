# [rails]------------------------------------------------------------
alias be='bundle exec'
alias br='bin/rails'
# ------------------------------------------------------------

# [node]------------------------------------------------------------
alias y='yarn'
# ------------------------------------------------------------

# [git]------------------------------------------------------------
alias current_branch='git symbolic-ref --short HEAD'
alias g='git'
alias gch='git checkout'
alias gpocf='gpoc --force-with-lease'
alias gl='git log'
alias gld='git log --graph --decorate --oneline'
alias gd='git diff'
alias ga='git add'
alias gc='git commit'
alias gb='git branch'
alias gcm='git commit -m'
alias gpo='git push origin'
alias gpoc='git push origin $(current_branch)'
alias gplo='git pull origin'
alias gploc='git pull origin $(current_branch)'
alias gs='git status'
alias clone='git clone'
alias gti='git'
alias gpocf='gpoc --force-with-lease'
alias gld='git log --graph --decorate --oneline'
# ------------------------------------------------------------s

# [エイリアス]------------------------------------------------------------
alias zshset='source ~/.zprofile'
alias bashset='source ~/.bash_profile'
alias macset='code ~/Works/mac-auto-setup/'
# ------------------------------------------------------------

# [エディタ]------------------------------------------------------------
alias rmine='/usr/local/bin/mine'
alias ij='/usr/local/bin/idea'
# ------------------------------------------------------------

# [docker]------------------------------------------------------------
alias dc='docker-compose'
alias d='docker'
# ------------------------------------------------------------

# [cd]------------------------------------------------------------
alias ...='cd ../..'
alias ....='cd ../../..'
# ------------------------------------------------------------

# [Rust tools]------------------------------------------------------------
alias dig='dog'
alias ping='gping'
alias diff='delta'
alias ls='lsd'
alias ll='ls -alFG'
alias l='lsd -la1'
alias cat='bat'
alias grep='rg'
alias -g G='| grep'

alias m='tldr'
alias his='history'
# ------------------------------------------------------------

alias -g to='>>'
alias -g to_zsh='| >> ${ZDOTDIR:-$HOME}/zsh/dotfile/index.sh'

# ------------------------
