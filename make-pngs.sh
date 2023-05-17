#!/bin/bash

find -name "*.svg" -o -name "*.SVG" | while read i; do
  inkscape --export-type="png" "$i"
done
