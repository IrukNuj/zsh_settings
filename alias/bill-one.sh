# [Bill One]

# ------------------------------------------------------------

# stg

alias billone-pf-center='billone-pf-stg bill-one-center-bff-stg=tcp:15437'
alias billone-pf-invoice='billone-pf-stg bill-one-invoice-pg13-stg=tcp:15434'
alias billone-pf-network='billone-pf-stg bill-one-network-pg13-stg=tcp:15435'
alias billone-pf-tenant='billone-pf-stg bill-one-tenant-pg13-stg=tcp:15436'
alias billone-pf-journal='billone-pf-stg bill-one-journal-pg13-stg=tcp:15438'

alias billone-pf-all='billone-pf-invoice & billone-pf-network & billone-pf-tenant & billone-pf-journal &'

billone-pf-stg() {
  cloud_sql_proxy -enable_iam_login -instances=bill-one-stg:asia-northeast1:$1
}

# ------------------------------------------------------------

# prod
alias billone-pf-center-prod='billone-pf-prod bill-one-center-bff-prod=tcp:25437'
alias billone-pf-invoice-prod='billone-pf-prod bill-one-invoice-pg13-prod=tcp:25434'
alias billone-pf-network-prod='billone-pf-prod bill-one-network-pg13-prod=tcp:25435'
alias billone-pf-tenant-prod='billone-pf-prod bill-one-tenant-pg13-prod=tcp:25436'
alias billone-pf-journal-prod='billone-pf-prod bill-one-journal-pg13-prod=tcp:25438'
alias billone-pf-all-prod='billone-pf-invoice-prod & billone-pf-network-prod & billone-pf-tenant-prod & billone-pf-journal-prod &'

billone-pf-prod() {
  cloud_sql_proxy -enable_iam_login -instances=bill-one-prod:asia-northeast1:$1
}

# ------------------------------------------------------------

# db
alias billone-db-dump='pg_dumpall -h localhost -p 5432 -U postgres --exclude-database postgres >~/zsh/backup/billone/dump-$(date "+%Y%m%dt%H%M%S").sql'
alias billone-db-reset='sh ~/zsh/script/billone-db-reset.sh'
alias billone-db-apply='psql -h localhost -p 5432 -U postgres -f'

# ------------------------------------------------------------

# [path]
alias -g billone-monorepo='~/work/billone/bill-one-monorepo/'
alias -g billone-frontend='~/work/billone/bill-one-frontend/'
alias billone-ui-start='cd ~/work/billone/bill-one-frontend/ui && npm start'
alias billone-bff-start='cd ~/work/billone/bill-one-frontend/bff && npm start'

# ------------------------------------------------------------
