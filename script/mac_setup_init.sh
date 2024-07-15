# 起動音を小さく
sudo nvram SystemAudioVolume=%01
# 動きを高速化
defaults write -g com.apple.trackpad.scaling -int 0
# 動きを高速化(マウス)
# defaults write -g com.apple.mouse.scaling 1.5
# タップしたときに、クリックとする
defaults write -g com.apple.mouse.tapBehavior -int 1
# キーのリピート
defaults write NSGlobalDomain KeyRepeat -int 0
# キーリピート開始までのタイミング
# defaults write NSGlobalDomain InitialKeyRepeat -int 0
# フルキーボードアクセスを有効
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
# 不可視ファイルを表示
defaults write com.apple.finder AppleShowAllFiles YES
# 全ての拡張子のファイルを表示する
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# 自動大文字の無効化
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write -g NSAutomaticDashSubstitutionEnabled -int 0 # ダッシュ置換を無効
defaults write -g NSAutomaticPeriodSubstitutionEnabled -int 0 # 自動ピリオド置換を無効
defaults write -g NSAutomaticQuoteSubstitutionEnabled -int 0 # スマートクォートを無効
defaults write -g NSAutomaticSpellingCorrectionEnabled -int 0 # 自動スペル置換を無効
defaults write -g NSAutomaticTextCompletionEnabled -int 0 # 自動テキスト補完を無効
defaults write -g WebAutomaticSpellingCorrectionEnabled -int 0 # Web の自動スペル置換を無効
defaults write com.apple.TextEdit CorrectSpellingAutomatically -bool false # 自動スペル修正を無効
# デフォルトをplainTextに
defaults write com.apple.TextEdit RichText -int 0
# show hidden files in finder
defaults write com.apple.finder AppleShowAllFiles YES
# Automatically hide or show the Dock
defaults write com.apple.dock autohide -bool true
# Wipe all app icons from the Dock
defaults write com.apple.dock persistent-apps -array
# Magnificate the Dock （Dock の拡大機能を入にする）
defaults write com.apple.dock magnification -bool true
 # ファイルを開くときのアニメーションを無効にする
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
  # ツールチップ表示までのタイムラグをなくす
defaults write -g NSInitialToolTipDelay -integer 0
 # ダイアログ表示やウィンドウリサイズ速度を高速化する
defaults write -g NSWindowResizeTime 0.1
 # コンソールアプリケーションの画面サイズ変更を高速にする
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
# Dock が表示されるまでの待ち時間を無効にする
defaults write com.apple.dock autohide-delay -float 0
# クイックルックでテキストを選択可能にする
defaults write com.apple.finder QLEnableTextSelection -bool true
# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
# Possible values: `WhenScrolling`, `Automatic` and `Always`

# Battery
defaults write com.apple.menuextra.battery ShowPercent -string "YES" # バッテリーのパーセントを表示

# Clock
defaults write com.apple.menuextra.clock DateFormat -string "M月d日(EEE)  H:mm" # 月・日・曜日・時・分を表示

# NetworkConnect
defaults write com.apple.networkConnect VPNShowTime -bool true # VPN の接続時間を表示

# Enable HiDPI display modes (requires restart)
# sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

# Increase window resize speed for Cocoa applications
# defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Disable the over-the-top focus ring animation
defaults write NSGlobalDomain NSUseAnimatedFocusRing -bool false

# Adjust toolbar title rollover delay
defaults write NSGlobalDomain NSToolbarTitleViewRolloverDelay -float 0

# defaults write -g AppleMiniaturizeOnDoubleClick -bool false # ダブルクリックで小型化しない
defaults write -g AppleActionOnDoubleClick -string "None" # ウインドウタイトルバーのダブルクリックでしまわない
defaults write -g AppleSpacesSwitchOnActivate -int 0 # アプリケーションの切り替えで、アプリケーションのウインドウが開いている操作スペースに移動しない

# springing
defaults write -g com.apple.springing.delay -float 0 # スプリングロード遅延を除去
defaults write -g com.apple.springing.enabled -bool true # ディレクトリのスプリングロードを有効化

# StatusItem
defaults write com.apple.systemuiserver "NSStatusItem Visible Siri" -bool false # Siri 非表示
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.airplay" -bool true # airplay 表示
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.airport" -bool true # airport 表示
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.battery" -bool true # battery 表示
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.bluetooth" -bool true # bluetooth 表示
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.clock" -bool true # clock 表示
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.volume" -bool true # volume 表示
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.vpn" -bool true # vpn 表示
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.appleuser" -bool true # appleuser 表示

# ------------------------------------------------------------
# ネットワークドライブで.DS_Store 等の作成を抑制する
# ------------------------------------------------------------
## https://support.apple.com/ja-jp/HT208209
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
# USBストレージで.DS_Store 等の作成を抑制する
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool TRUE

# ------------------------------------------------------------
# Bluetoothの音質周りの設定
# ------------------------------------------------------------
## https://minatokobe.com/wp/os-x/mac/post-75289.html
## aptXを有効化
sudo defaults write bluetoothaudiod "Enable AptX codec" -bool true
## AACを有効化
sudo defaults write bluetoothaudiod "Enable AAC codec" -bool true
## bitpoolの最低値を上げて、Bluetoothヘッドフォン/ヘッドセットの音質を向上させる
### https://news.mynavi.jp/article/osxhack-63/
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

