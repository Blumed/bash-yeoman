#!/bin/bash

HIVE(){
    echo "Welcome to HIVE!
    If would like to create or update bitbucket credentials press (Y)
    If you would like to continue press (n)"
    read answer
    if [[ ! $answer =~ ^[Nn]$ ]]
    then
    rm ~/.bitbucket;
     echo "
     What is your bitbucket username?";
     read username;
     echo "
     what is your bitbucket password?";
     read password;
     touch ~/.bitbucket;
     echo "bitbucketusername=\"$username\"; bitbucketpassword=\"$password\";" >> ~/.bitbucket;
    fi
    echo "Where would you like your Hive project location to be?"
    echo  "You are currently here"
    pwd;
    echo #space
    read location;
    if [ ! -d "$location" ]
    then
        echo "File path $location does not exists"
        return
    fi
    echo "What is the name of your project?"
    read project;
    echo "Is all this information correct? Y/N"
    read answer;
    echo    #space
    if [[ ! $answer =~ ^[Yy]$ ]]
    then
        return;
    fi
    echo "Starting Hive";
    cd $location;
    curl --user $bitbucketusername:$bitbucketpassword https://bitbucket.org/company-or-user/get/master.zip -o master.zip && unzip master.zip
    mv -f horizontal-hive* $project
    cd $project && npm install && gulp
}