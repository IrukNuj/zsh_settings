source ~/zsh/dotfile/alias/bill-one.sh
source ~/zsh/dotfile/alias/git.sh

# ------------------------------------------------------------
# [rails]
alias be='bundle exec'
alias br='bin/rails'
# ------------------------------------------------------------

# ------------------------------------------------------------
# [node]
alias n='npm'
alias ns='npm start'

alias y='yarn'
alias ys='yarn start'
# ------------------------------------------------------------

# ------------------------------------------------------------
# [エイリアス]
alias zshset='source ~/.zprofile'
alias bashset='source ~/.bash_profile'
alias macset='code ~/Works/mac-auto-setup/'
alias aliases='bat ~/zsh/dotfile/alias.sh'
# ------------------------------------------------------------

# ------------------------------------------------------------
# [エディタ]
alias ij='/usr/local/bin/idea'
alias -g to='>>'
alias -g to_zsh='| >> ${ZDOTDIR:-$HOME}/zsh/dotfile/index.sh'
# ------------------------------------------------------------

# ------------------------------------------------------------
# [docker]
alias dc='docker-compose'
alias d='docker'
# ------------------------------------------------------------

# -----------------------------------------------------------vs-
# [cd]
alias cd='cd -P'
alias ...='cd ../..'
alias ....='cd ../../..'
# ------------------------------------------------------------

# ------------------------------------------------------------
# [Rust tools]
alias dig='dog'
alias ping='gping'
# alias diff='delta'
alias ls='lsd'
alias ll='ls -alFG'
alias l='lsd -la1'
alias cat='bat'
alias grep='rg'
# alias -g G='| grep'
alias man='tldr'
alias trans='trans en:ja -b'
alias his='history'
# ------------------------------------------------------------

# ------------------------------------------------------------
# [pueue]
alias qued='pueued -d && pueue add'
alias que='pueue add'
# ------------------------------------------------------------

alias port='lsof -ai -P'
alias memo='code ~/work/memo'
