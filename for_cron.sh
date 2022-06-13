#/bin/bash

apach_path=/var/www/html
log_file=connection.log

mc_path=/home/lukehan/minecraft
mcmmo_path=$mc_path/plugins/mcMMO/flatfile
mcmmo_ufile=mcmmo.users
mcmmo_pfile=parties.yml
user_file=latest.log

cp $mcmmo_path/$mcmmo_ufile $apach_path
cp $mcmmo_path/$mcmmo_pfile $apach_path

cnt=0
for user in $(cat $apach_path/$mcmmo_ufile | grep -v '#' | awk -F ':' '{ print $1 }')
do
	line=$(cat $mc_path/logs/$user_file | grep "$user" | grep -v "<" | tail -n 1)
	output="[Login] $user"
	
	if [[ "$line" == *"left the game*" ]]
	then
		output=$(echo $line | awk -F ' ' '{ print $1 " "  $4}')
	fi
	
	if [ $cnt = 0 ]
	then
		echo $output > $apach_path/$log_file
	else
		echo $output >> $apach_path/$log_file
	fi
	cnt=$((cnt+1))
done
