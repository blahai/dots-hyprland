#!/usr/bin/env bash
mkdir -p ./cache/ags
cd ./cache/ags
git init -b main
git remote add origin https://github.com/Aylur/ags.git
git pull origin main && git submodule --init --recursive
git checkout f905abfd2210701929ffaa3db13faa783b782765 # "update examples"
npm install
meson setup build
meson install -C build
