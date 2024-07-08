_default:
  @just --list

build:
  #!/usr/bin/env bash
  whiskers templates/tabs.tera
  whiskers templates/title.tera
  whiskers --list-flavors -o plain | while read -r flavor; do
    mkdir $flavor/tabs/
    mkdir $flavor/title/
    for file in templates/**/*.svg; do
      output=${file/templates/$flavor}
      whiskers $file -f $flavor > $output
      inkscape --export-type="png" "$output"
    done
    cp templates/icon.png $flavor
    cp templates/icon_big.png $flavor
  done
