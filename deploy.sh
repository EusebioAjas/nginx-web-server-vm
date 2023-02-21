#!/bin/bash

sudo systemctl stop nginx

REPOSITORY_URL="https://github.com/EusebioAjas/nginx-web-server-vm.git"
LOCAL_DIR="$(pwd)"

if [ ! -d "$LOCAL_DIR" ]
then
  git clone "$REPOSITORY_URL"
else
  git pull origin master
fi

sudo systemctl start nginx
ngrok http 80

