#!/usr/bin/env bash
if [[ -f "~/Pictures/wallpapers/videos/current" ]]; then
  mpvpaper DP-1 -f -o "loop panscan=1.0" ~/Pictures/wallpapers/videos/current
fi
