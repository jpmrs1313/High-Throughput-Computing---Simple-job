#!/bin/bash
# resize.sh

nome="reduced-"
FILE=$1
OUTPUT=$2
if [ -f "$FILE" ]; then
    echo "$FILE exists."
    duracao= ffprobe -i $FILE -show_entries format=duration -v quiet -of csv="p=0"
    ffmpeg -i $FILE  -vf scale=720:720 $OUTPUT
    echo "video cortado"
else 
    echo "File $FILE does not exist."
fi
