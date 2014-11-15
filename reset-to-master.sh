#!/bin/bash
cd ~/discourse
git fetch origin
git reset --hard origin/master
git pull origin master
