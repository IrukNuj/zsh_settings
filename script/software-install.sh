curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

if ! type brew >/dev/null; then
  echo "not Install brew."
  echo "Start install brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew bundle --global
