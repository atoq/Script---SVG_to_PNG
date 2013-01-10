#!/bin/bash
# By David Vilchez
# Converts svg to png recursively. does not delete any static files, so cleanup and renaming is needed afterwards.
# Requirement:
# librsvg   -   http://librsvg.sourceforge.net/download/

current_directory=$(pwd)
svg_files=$(find "${current_directory}" -type f -iname "*.svg")

IFS=$'\n'

for svg_file in ${svg_files}; do 
  rsvg-convert "${svg_file}" -o "${svg_file}".png
done
