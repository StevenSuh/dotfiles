current_dir=$PWD

gp() {
  message=$@
  git add -A && git ci -m "$message" && git push --force
}

cp ~/update.files.sh ~/Dotfiles/
cp ~/.gitconfig ~/Dotfiles/
cp -r ~/.vim ~/Dotfiles/
cp -r ~/.vim_runtime ~/Dotfiles/
cp ~/.vimrc ~/Dotfiles/
cp ~/.zshrc ~/Dotfiles/
cp ~/Library/Preferences/com.googlecode.iterm2.plist ~/Dotfiles/

cd ~/Dotfiles/
sudo chmod -R 755 ~/Dotfiles
gp update dotfiles
cd $current_dir
