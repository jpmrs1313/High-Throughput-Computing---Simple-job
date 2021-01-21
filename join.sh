#!/bin/bash
#juntar os videos

 ffmpeg -f concat -safe 0 -i $1 -c copy final.mp4

