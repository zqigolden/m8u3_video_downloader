set -x
link=$1

cd src

#get name
name=$(curl -s "$link" | grep mac_name | sed -E "s/.*mac_name=\'([^\' ]*).*/\1/g")

test -d $name || mkdir $name
echo $link $name | tee -a log

../src/get_m3u8_links.sh $link $name
../src/start_download.sh $link

mv *csv *log ../$name
