#!/bin/sh

# check python version
python3 --version

#get the pip installer
python -m get-pip.py
python3 -m get-pip.py

# install robot framework
pip install robotframework

#install git
sudo apt install git

# grab the source code from github
git clone https://github.com/zieglarnatta/chessSim.git

# change directory
cd chessSim