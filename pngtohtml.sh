#!/bin/bash
# Bash script to examine a set of images in a temp webpage

# Basic HTML tags
echo "<HTML><BODY><BR>" > web.html

# Insert each of the images in the current directory into the webpage
ls -l *.png | awk -F : '{print $1:\n<BR><IMG SRC=\""$1""$2"\" width=600><BR>"}' >> web.html

# Closing tags
echo "</BODY><HTML>" >> web.html
