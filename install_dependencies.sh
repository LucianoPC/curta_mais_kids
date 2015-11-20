sudo apt-get install curl -y

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

\curl -sSL https://get.rvm.io | bash -s stable

echo "source $HOME/.rvm/scripts/rvm" >> ~/.bash_profile

/home/vagrant/.rvm/bin/rvm install 2.2

ruby --version

gem install rails --version=4.2.4
