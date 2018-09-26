#!/bin/bash

if [ ! -e ~/.bash_profile ]
  then touch $HOME/.bash_profile;
  echo "created files bash_profile";
fi
touch $HOME/.bitbucket;
mv ~/hive-launcher/hive-launcher.sh ~/
rm -R ~/hive-launcher
echo "created file bitbucket";
echo "source ~/hive-launcher.sh; source ~/.bitbucket;" >> ~/.bash_profile
echo "files hive-launcher and bitbucket are now linked in bash_profile"
