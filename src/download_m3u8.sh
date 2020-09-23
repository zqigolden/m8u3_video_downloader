#!/bin/bash
OUT=${2-out.mp4}
INPUT_M3U8=$1
if [ ! -d $(dirname $OUT) ]; then
    mkdir -p $(dirname $OUT)
fi
test -f $OUT || ffmpeg -i "$INPUT_M3U8" -y -c copy $OUT
