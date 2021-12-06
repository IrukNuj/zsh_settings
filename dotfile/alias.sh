# ------------------------------------------------------------
# [path]
## ------------------------------------------------------------
# [Bill One]
alias -g billone-monorepo='~/work/billone/bill-one-monorepo/'
alias -g billone-frontend='~/work/billone/bill-one-frontend/'
alias billone-frontend_ui_setup='cd ~/work/billone/bill-one-frontend/ui && npm start'
alias billone-frontend_bff_setup='cd ~/work/billone/bill-one-frontend/bff && npm start'
## ------------------------------------------------------------
# ------------------------------------------------------------

# ------------------------------------------------------------
# [Bill One]
# stg
alias billone-pf-all='billone-pf-invoice & billone-pf-network & billone-pf-tenant & billone-pf-journal &'
alias billone-pf-center=$'cloud_sql_proxy -instances=bill-one-stg:asia-northeast1:bill-one-center-bff-stg=tcp:15437'
alias billone-pf-invoice='cloud_sql_proxy -instances=bill-one-stg:asia-northeast1:bill-one-invoice-pg13-stg=tcp:15434'
alias billone-pf-network='cloud_sql_proxy -instances=bill-one-stg:asia-northeast1:bill-one-network-pg13-stg=tcp:15435'
alias billone-pf-tenant='cloud_sql_proxy -instances=bill-one-stg:asia-northeast1:bill-one-tenant-pg13-stg=tcp:15436'
alias billone-pf-journal='cloud_sql_proxy -instances=bill-one-stg:asia-northeast1:bill-one-journal-pg13-stg=tcp:15438'

# prod
alias billone-pf-all-prod='billone-pf-invoice-prod & billone-pf-network-prod & billone-pf-tenant-prod & billone-pf-journal-prod &'
alias billone-pf-center-prod='cloud_sql_proxy -instances=bill-one-prod:asia-northeast1:bill-one-center-bff-prod=tcp:25437'
alias billone-pf-invoice-prod='cloud_sql_proxy -instances=bill-one-prod:asia-northeast1:bill-one-invoice-pg13-prod=tcp:25434'
alias billone-pf-network-prod='cloud_sql_proxy -instances=bill-one-prod:asia-northeast1:bill-one-network-pg13-prod=tcp:25435'
alias billone-pf-tenant-prod='cloud_sql_proxy -instances=bill-one-prod:asia-northeast1:bill-one-tenant-pg13-prod=tcp:25436'
alias billone-pf-journal-prod='cloud_sql_proxy -instances=bill-one-prod:asia-northeast1:bill-one-journal-pg13-prod=tcp:25438'

# db
alias billone-db-reset='sh ~/zsh/script/billone-db-reset.sh'
alias billone-db-apply='psql -h localhost -p 5432 -U postgres -f'
# ------------------------------------------------------------

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
# [git]
alias -g current_branch='git symbolic-ref --short HEAD'
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
alias gpoc='current_branch | git push origin'
alias gplo='git pull origin'
alias gploc='current_branch | git pull origin'
alias gs='git status'
alias clone='git clone'
alias gti='git'
alias gpocf='gpoc --force-with-lease'
alias gld='git log --graph --decorate --oneline'
# ------------------------------------------------------------

# ------------------------------------------------------------
# [エイリアス]
alias zshset='source ~/.zprofile'
alias bashset='source ~/.bash_profile'
alias macset='code ~/Works/mac-auto-setup/'
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
alias diff='delta'
alias ls='lsd'
alias ll='ls -alFG'
alias l='lsd -la1'
alias cat='bat'
alias grep='rg'
# alias -g G='| grep'

alias m='tldr'
alias his='history'
# ------------------------------------------------------------

# ------------------------------------------------------------
# [pueue]
alias qued='pueued -d && pueue add'
alias que='pueue add'
# ------------------------------------------------------------

alias port='lsof -ai -P'
alias memo='code ~/work/memo'
