#!/usr/bin/env bash
mkdir -p ./cache/ags
cd ./cache/ags
git init -b main
git remote add origin https://github.com/Aylur/ags.git
git pull origin main && git submodule --init --recursive
git checkout c93e32cc5f822e99303b9d452f8a845ef207bb66
npm install
meson setup build
meson install -C build
