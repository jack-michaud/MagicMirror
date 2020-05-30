#!/bin/sh

git pull origin master

git submodule update --init
git submodule sync
git submodule foreach ./update_and_build.sh

yarnpkg start
