##RVM GOES HERE
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm


mkdir ~/projects
cd ~/projects

rvm install 1.9.3
rvm install 2.1.2
rvm use 2.1.2 --default

gem install rake
gem install bundler
gem install rails

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim # Vundle for vim
git clone git://github.com/lmhsjackson/dotfiles ~/.dotfiles
cd ~/.dotfiles
rake install
