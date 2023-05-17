#!/usr/bin/env bash

FLAVORS=(latte frappe macchiato mocha)

for flavor in "${FLAVORS[@]}"; do
  tar -zcf "catppuccin-$flavor.tar.gz" "$flavor/"
done
