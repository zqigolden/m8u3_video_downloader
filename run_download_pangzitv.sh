link=$1

#get name
name=$(curl -s "$link" | grep mac_name | sed -E "s/.*mac_name=\'([^\' ]*).*/\1/g")
echo $link $name

mkdir $name
cd src

../src/get_m3u8_links.sh $link $name
../src/start_download.sh $link

mv *csv *mp4 *log ../$name
