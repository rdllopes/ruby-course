#!/bin/bash 
pandoc -f latex -t markdown $1 -o temp.md
output=$(echo $1 | sed -e "s/tex$/md/") 
./separator.rb < temp.md > $output
mdpress -s custom $output
