# ln -s zsh/dotfile/index.sh .zshrc

# export STARSHIP_CONFIG=~/zsh/starship.toml

# [zsh_index]------------------------------------------------------------
source ~/zsh/dotfile/alias.sh
# ------------------------------------------------------------

# [plugins]------------------------------------------------------------
source ~/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh # If you want to use zsh-syntax-highlighting along with this script, then make sure that you load it before you load this script:
source ~/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/zsh/plugins/git-flow-completion/git-flow-completion.zsh
source ~/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/zsh/plugins/zsh-completions/zsh-completions.plugin.zsh
# ------------------------------------------------------------

# [billone]------------------------------------------------------------
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'

# stg
alias billone-pf-all='billone-pf-invoice & billone-pf-network & billone-pf-tenant &'
alias billone-pf-center=$'cloud_sql_proxy -instances=bill-one-stg:asia-northeast1:bill-one-center-bff-stg=tcp:15437\C-?'
alias billone-pf-invoice='cloud_sql_proxy -instances=bill-one-stg:asia-northeast1:bill-one-invoice-stg=tcp:15434'
alias billone-pf-network='cloud_sql_proxy -instances=bill-one-stg:asia-northeast1:bill-one-network-stg=tcp:15435'
alias billone-pf-tenant='cloud_sql_proxy -instances=bill-one-stg:asia-northeast1:bill-one-tenant-stg=tcp:15436'

# prod
alias billone-pf-all-prod='billone-pf-invoice-prod & billone-pf-network-prod & billone-pf-tenant-prod &'
alias billone-pf-center-prod='cloud_sql_proxy -instances=bill-one-prod:asia-northeast1:bill-one-center-bff-prod=tcp:25437'
alias billone-pf-invoice-prod='cloud_sql_proxy -instances=bill-one-prod:asia-northeast1:bill-one-invoice-prod=tcp:25434'
alias billone-pf-network-prod='cloud_sql_proxy -instances=bill-one-prod:asia-northeast1:bill-one-network-prod=tcp:25435'
alias billone-pf-tenant-prod='cloud_sql_proxy -instances=bill-one-prod:asia-northeast1:bill-one-tenant-prod=tcp:25436'
# ------------------------------------------------------------

# [Eight]------------------------------------------------------------

# ------------------------------------------------------------

eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
# eval "$(pueued -d)"
# [zsh]------------------------------------------------------------
autoload -Uz history-search-end
autoload -Uz compinit && compinit -u # zsh補完
autoload -Uz colors && colors        # 色を使用出来るようにする

zstyle ':completion:*:processes' menu yes select=2  # kill コマンドのようなものに関しては候補をタブで選択できるようにする
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # 補完で小文字でも大文字にマッチさせる

setopt correct              # もしかして機能
setopt share_history        # 同時に起動した zsh の間でヒストリを共有する
setopt auto_pushd           # cd [TAB] で以前移動したディレクトリを表示
setopt nolistbeep           # ビープ音の停止(補完時)
setopt auto_cd              # cd なしでもディレクトリ移動
setopt no_beep              # ビープ音の停止
setopt print_eight_bit      # 日本語ファイル名を表示可能にする
setopt hist_ignore_all_dups # 入力したコマンドがすでにコマンド履歴に含まれる場合、履歴から古いほうのコマンドを削除する
setopt hist_ignore_space    # コマンドがスペースで始まる場合、コマンド履歴に追加しない/履歴に残したくないコマンドを入力するとき使う

HISTFILE=~/.zsh_history # ヒストリの設定
HISTSIZE=1000000
SAVEHIST=1000000
setopt EXTENDED_HISTORY
# ------------------------------------------------------------

# ------------------------
