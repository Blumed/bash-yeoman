# Hive Launcher

## Installation Instructions

```
curl --user bitbucketusername:bitbucketpassword https://bitbucket.org/horizontal/hive-launcher/get/master.zip -o master.zip && unzip master.zip
mv -f horizontal-hive* hive-launcher
mv hive-launcher ~/
cd ~/hive-launcher
chmod 777 ./hive-init.sh
source ./hive-init.sh
cd
```
1. Copy the code above into a text editor and update the bitbucket username and password text.

2. Then paste it into a terminal.
*Warning this script will only work on a mac || linux OS*

3. Press `command + t` or `command + n` to start a new terminal session
4. Finally type `HIVE` press enter and follow the new project tutorial

---

Here is a breakdown of the code above:

1. Curl downloads the launcher repo and unzips
2. grabs the unzipped folder and renames it
3. Moves folder to your root directory
4. Goes into the horizontal launcher folder
5. Gives itself permission to run the init file
6. Runs init
7. Returns to root directory

---

## Initial Installation
First off, welcome to HIVE! On your first install you must enter your bitbucket credentials. If you mess up or feel fuzzy about the information you entered don’t worry. There will be a final step asking you if all of the information you have entered is correct. Feel free to type (n) and start over.

---

## Hive Init
The init file is only meant to run once. The file checks to see if you have a .bash_profile. If no such file exists it creates one. Then it creates a link to the launcher itself and a secret file to store your bitbucket credentials. If you move the launcher you'll need to update your .bash_profile.

## Hive Launcher
The launcher activates when `HIVE` is typed into the terminal. It will ask if you would like to update your bitbucket credentials. If it is your first time using HIVE then you must follow this step. If you already added your bitbucket credentials and you don’t need to update your information then you should skip this step. The script builds the bitbucket curl. This curl creates a new instance of hive with no git history. Moves hive to your preferred project folder. Hive folder is renamed to the project name you have entered. Then it goes into your new directory and runs `npm install` and `gulp`. 
For now on when you start a new project here at HI the only requirement is to run the HIVE script and fill out the installation tutorial. Have fun, and happy coding.# bash-yeoman
