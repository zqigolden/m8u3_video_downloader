#!/bin/bash
link=$1

cd src

if [[ $link~=*vod-detail-id* ]]; then
    old_link=link
    link=$(sed -E 's/vod-detail-id-([0-9]+).*/vod-play-id-\1-src-1-num-1.html/g' <<< $link)
    echo "Redirect to $link"
fi

#get name
name=$(curl -s "$link" | grep mac_name | sed -E "s/.*mac_name=\'([^\' ]*).*/\1/g")

test -d $name || mkdir $name
echo $link $name | tee -a log

../src/get_m3u8_links.sh $link $name
../src/start_download.sh $link

mv *csv *log ../$name
