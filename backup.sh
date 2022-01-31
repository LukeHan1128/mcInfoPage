#/bin/bash

mc_path=/home/lukehan/mc
bk_path=/home/lukehan/bk_mc
today=$(date +%Y%m%d)
gab=-7

for dir in $(ls -al $bk_path | grep mc | awk -F '_' '{ print $2 }')
do
	if [ $(date -d "$today $gab days" +%Y%m%d) -gt $dir ]
	then
		rm -rf $bk_path/mc_$dir
	fi
done

cp -r $mc_path $bk_path/mc_$(date +%Y%m%d)
