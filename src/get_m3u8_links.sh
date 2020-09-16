LINK="$1"
SAVE_DIR="$2"
RAW_DATA=$(curl -s $LINK | grep m3u8 | sed -E "s/.*unescape\(\'(.*m3u8).*/\1/g")
./unquote.py $RAW_DATA > all_videos.csv
./cvt_name.sh $SAVE_DIR | tee -a log
