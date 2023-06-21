#!/bin/bash

sudo apt-get update
sudo apt-get install -y python3 python3-pip ruby enscript git ghostscript
sudo python3 -m pip install --upgrade pip
sudo pip install xml2rfc
sudo gem install kramdown-rfc2629
