#!/bin/bash 

# Save this script into set_colors.sh, make this file executable and run it: 
# 
# $ chmod +x set_colors.sh 
# $ ./set_colors.sh 
# 
# Alternatively copy lines below directly into your shell. 

gconftool-2 -s -t string /apps/guake/style/background/color '#262626262626'
gconftool-2 -s -t string /apps/guake/style/font/color '#c6c6c6c6b9b9'
gconftool-2 -s -t string /apps/guake/style/font/palette '#262626262626:#cdcd5c5c5c5c:#999999990000:#eded8e8e5e5e:#24248f8f8f8f:#c9c9acacd2d2:#24248f8f8f8f:#c6c6c6c6b9b9:#262626262626:#cdcd5c5c5c5c:#999999990000:#eded8e8e5e5e:#24248f8f8f8f:#c9c9acacd2d2:#24248f8f8f8f:#c6c6c6c6b9b9'
