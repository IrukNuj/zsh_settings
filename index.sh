# export STARSHIP_CONFIG=~/zsh/starship.toml

# [zsh_index]------------------------------------------------------------
source ~/zsh/dotfile/alias/alias.sh
source ~/zsh/dotfile/zplug.sh
source ~/zsh/dotfile/zsh_config.sh
# ------------------------------------------------------------

# [plugins]------------------------------------------------------------
source ~/zsh/dotfile/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh # If you want to use zsh-syntax-highlighting along with this script, then make sure that you load it before you load this script:
source ~/zsh/dotfile/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/zsh/dotfile/plugins/git-flow-completion/git-flow-completion.zsh
source ~/zsh/dotfile/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/zsh/dotfile/plugins/zsh-completions/zsh-completions.plugin.zsh
source ~/zsh/dotfile/plugins/flutter-completion.zsh
# source ~/zsh/dotfile/plugins/*.zsh
# source ~/zsh/dotfile/plugins/*/*.zsh
# ------------------------------------------------------------

eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
# eval "$(pueued -d)"

# ------------------------
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'

# ------------------------------------------------------------
export REACT_EDITOR=code
export PATH="/usr/local/sbin:$PATH"

#################################  HISTORY  #################################
# history
HISTFILE=$HOME/.zsh-history # 履歴を保存するファイル
HISTSIZE=100000             # メモリ上に保存する履歴のサイズ
SAVEHIST=1000000            # 上述のファイルに保存する履歴のサイズ
