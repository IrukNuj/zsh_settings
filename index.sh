export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export STARSHIP_CONFIG=~/zsh/starship.toml
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# https://qiita.com/samunohito/items/d167aed2552620e4dfae
# export DISPLAY=`ip route | grep 'default via' | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`:0


# [zsh_index]------------------------------------------------------------
source ~/zsh/dotfile/alias/alias.sh
source ~/zsh/dotfile/zplug.sh
source ~/zsh/dotfile/zsh_config.sh
# ------------------------------------------------------------

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting"

zplug install
zplug load --verbose


# [plugins]------------------------------------------------------------
# source ~/zsh/dotfile/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh # If you want to use zsh-syntax-highlighting along with this script, then make sure that you load it before you load this script:
# source ~/zsh/dotfile/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source ~/zsh/dotfile/plugins/git-flow-completion/git-flow-completion.zsh
# source ~/zsh/dotfile/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source ~/zsh/dotfile/plugins/zsh-completions/zsh-completions.plugin.zsh
# source ~/zsh/dotfile/plugins/flutter-completion.zsh
# source ~/zsh/dotfile/plugins/*.zsh
# source ~/zsh/dotfile/plugins/*/*.zsh
# ------------------------------------------------------------

eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
eval "$(nodenv init -)"
# source $($HOME/.cargo/env)
# eval "$(pueued -d)"

# ------------------------
# source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
# source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'

# ------------------------------------------------------------
export REACT_EDITOR=code
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.nodenv/bin:$PATH"

#################################  HISTORY  #################################
# history
HISTFILE=$HOME/.zsh-history # 履歴を保存するファイル
HISTSIZE=100000             # メモリ上に保存する履歴のサイズ
SAVEHIST=1000000            # 上述のファイルに保存する履歴のサイズ
