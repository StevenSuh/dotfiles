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

cd ~/Dotfiles/
chmod -R a+rX ~/Dotfiles/

gp update dotfiles
cd $current_dir
