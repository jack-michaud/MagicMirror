#!/bin/sh

git submodule update --init
git submodule sync
git submodule foreach ./update_and_build.sh

yarnpkg start
