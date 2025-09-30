#!/bin/bash
set -e

# config git
git config --global user.name "Nguyễn Nhật"
git config --global user.email "ng.nhat103@gmail.com"
git config --global init.defaultBranch main

# Cài đặt các gói cần thiết
sudo apt install redshift slick-greeter vim gcc gdb make clang-format

# --- Purge các gói không cần thiết ---
echo "removing avahi-daemon, cups, modemmanager, geoclue-2.0, system-config-printer..."
sudo apt purge avahi-daemon cups modemmanager geoclue-2.0 system-config-printer
sudo apt autoremove 
echo "complete."

# --- Tắt Bluetooth ---
echo "Dừng dịch vụ Bluetooth..."
sudo systemctl stop bluetooth 
sudo systemctl disable bluetooth

echo "Dừng dịch vụ bluetooth.service..."
sudo systemctl stop bluetooth.service
sudo systemctl disable bluetooth.service

echo "Đã tắt và vô hiệu hóa Bluetooth."

# Copy thư mục autostart vào ~/.config/
if [ -d "./autostart" ]; then
   # mkdir -p ~/.config
    cp -r ./autostart ~/.config/
    echo "Đã copy autostart vào ~/.config/"
fi

# Copy thư mục chrome vào ~/.mozilla/firefox/8tl1h129.default-esr/
if [ -d "./autostart" ]; then
    #mkdir -p ~/.config
    cp -r ./chrome ~/.mozilla/firefox/8tl1h129.default-esr/
    echo "Đã copy chrome vào ~/.mozilla/firefox/8tl1h129.default-esr/"
fi

# Copy thư mục vim vào $HOME và đổi tên thành .vim
if [ -d "./vim" ]; then
    cp -r ./vim ~/.vim
    echo "Đã copy vim vào home và đổi tên thành .vim"
fi

# Copy thư mục icons vào $HOME và đổi tên thành .icons
if [ -d "./icons" ]; then
    cp -r ./icons ~/.icons
    echo "Đã copy vim vào home và đổi tên thành .vim"
fi

# Copy file clang-format vào $HOME và đổi tên thành .clang-format
if [ -f "./clang-format" ]; then
    cp ./clang-format ~/.clang-format
    echo "Đã copy clang-format vào home và đổi tên thành .clang-format"
fi

# Copy file face vào $HOME và đổi tên thành .face
if [ -f "./face" ]; then
    cp ./face ~/.face
    echo "Đã copy face vào home và đổi tên thành .face"
fi
