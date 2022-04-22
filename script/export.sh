cp $(~/.gitconfig) $(./export/.gitconfig)
cp $(~/.gitignore_global) $(./export/.gitignore_global)

brew bundle dump --force
mv $(./Brewfile) $(./export/Brewfile)
