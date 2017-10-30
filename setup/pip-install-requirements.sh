#!/usr/bin/env bash

echo "Installing Package Requirements"

echo "PIP allows us to download and manage python packages"
echo "Downloading pip..."

curl https://bootstrap.pypa.io/get-pip.py > get-pip.py

echo "Installing Pip using Python 3"
sudo -H python3 get-pip.py

sudo -H pip3 install --user -r requirements.txt
