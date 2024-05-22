#!/usr/bin/env bash
mkdir -p ./cache/ags
cd ./cache/ags
git init -b main
git remote add origin https://github.com/Aylur/ags.git
git pull origin main && git submodule --init --recursive
git checkout 05e0f23534fa30c1db2a142664ee8f71e38db260
npm install
meson setup build
meson install -C build
