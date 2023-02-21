#!/bin/bash

sudo systemctl stop nginx

REPOSITORY_URL="https://github.com/EusebioAjas/nginx-web-server-vm.git"
LOCAL_DIR="$(pwd)"

if [ ! -d "$LOCAL_DIR" ]
then
  sudo git clone "$REPOSITORY_URL"
else
  sudo git pull origin master
fi

sudo systemctl start nginx
ngrok http 80

