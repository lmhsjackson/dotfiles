### Adding ppa
add-apt-repository ppa:synapse-core/ppa
apt-add-repository ppa:chris-lea/redis-server
add-apt-repository ppa:me-davidsansome/clementine
sh -c "echo 'deb http://archive.canonical.com/ubuntu/ trusty partner' >> /etc/apt/sources.list.d/canonical_partner.list" #for skype

#chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'


#add all the ppa above this line :)
apt-get update

wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

apt-get -y install synapse google-chrome-stable git gitg vim zsh rake postgresql postgresql-contrib sqlite3 libsqlite3-dev redis-server skype gnupg2 clementine

# making zsh default shell
chsh -s $(which zsh)

gsettings set org.gnome.gedit.preferences.editor create-backup-copy 'false' #DISABLES gedit backup files creation (I don't like them)

printf "\n#############################################\n"
printf "Remember to:\n"
printf "  * Run the second part of the script WITHOUT sudo \n"
printf "  * Config heroku toolbelt by running 'heroku login'\n"
printf "  * Add github ssh key https://help.github.com/articles/generating-ssh-keys/ \n" 
printf "  * Add run command as login shell \n"
printf "  * Be happy :) \n"
printf "############################################# \n"
