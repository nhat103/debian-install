sudo apt install git 
/*** git clone https://github.com/nhat103/at-xfce.git ***/
# git config 
git config --global user.name "Nguyễn Nhật"
git config --global user.email "ng.nhat103@gmail.com"
git config --global init.defaultBranch main

=================== INSTALL ============

sudo apt install redshift slick-greeter vim gcc gdb make clang-format
=================== MOVE FILE FOLDER   =============
autostart -> /.config
icons -> ~/.icons
clang-format -> ~/.clang-format
face -> ~/.face
vim ->/.vim 
chrome -> ~/home/nhat/.mozilla/firefox/8tl1h129.default-esr/
================================== create folder==============================
# create tmp folder
mkdir -p ~/.vim/tmp/{backup,swap,undo}
================================== TURN OFF SERVICE ===========================
# purge package
apt list --installed | grep geoclue
sudo apt purge avahi-daemon cups modemmanager geoclue-2.0 system-config-printer
sudo apt autoremove
# blutooth
sudo systemctl stop bluetooth
sudo systemctl disable bluetooth
sudo systemctl stop bluetooth.service
sudo systemctl disable bluetooth.service

===================== CONFIGURE =============================
#slick-greeter
cd /etc/lightdm/
ls
sudo nano lightdm.conf
uncheck 	greeter-hide-users=false	
	//greeter-session=slick-greeter
======
# black screen when suspend
power managwer -> system -> security 
 uncheck
======
# workspace
Window Manager Tweaks -> Workspace
 just check option 4
======
# panel
 time format %l:%M %p( l thường)
======
# firefox-esr
firefox brrowse about:config 
# search google in new tab
browser.search.openintab  false->true
# put chrome folder config
toolkit.legacyUserProfileCustomizations.stylesheets false->true
============
# add firefox to search firefox
Setting -> search -> Search Shortcuts -> Add 
Name : Oxford Learner’s Dictionary
Keyword : Oxford
URL : https://www.oxfordlearnersdictionaries.com/search/english/direct/?q=%s
==
Name Cambridge Learner's Dictionary
https://dictionary.cambridge.org/dictionary/learner-english/%s
keywork Cambridge Dictionary
===



