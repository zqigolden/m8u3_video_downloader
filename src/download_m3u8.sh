#!/bin/bash
OUT=${2-out.mp4}
INPUT_M3U8=$1
ffmpeg -i "$INPUT_M3U8" -y -c copy $OUT
