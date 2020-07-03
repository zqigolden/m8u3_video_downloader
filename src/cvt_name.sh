SAVE_DIR=$1
tr '#$' '\n ' < all_videos.csv | awk '{print $2" ../'$SAVE_DIR'/"$1".mp4"}' > all_videos_cvt.csv
