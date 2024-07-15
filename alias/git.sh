# [git]

# ------------------------------------------------------------

# alias -g current_branch='git symbolic-ref --short HEAD'
alias -g current_branch='git branch --show-current'
alias -g current_repo='basename `git rev-parse --show-toplevel`'
alias g='git'
alias gch='git checkout'
alias gl='git log'
alias gld='git log --graph --decorate --oneline'
alias gd='git diff'
alias ga='git add'
alias gc='git commit'
alias gb='git branch'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias gpo='git push origin'
alias gpoc='git push origin $(current_branch)'
alias gpocf='gpoc --force-with-lease'
alias gplo='git pull origin'
alias gploc='git pull origin $(current_branch)'
alias gs='git status'
alias clone='git clone'
alias gti='git'
alias gpocf='gpoc --force-with-lease'
alias gld='git log --graph --decorate --oneline'
alias -g push-f='push --force-with-lease'
alias gchp='git cherry-pick'
# alias branch_history='git --no-pager reflog | awk "$3=="checkout:" && /moving from/ {print $8}" | uniq'
# alias gbl='git --no-pager reflog | awk '$3 == "checkout:" && /moving from/ {print $8}' | uniq | sed -n 3p'
# ------------------------------------------------------------
