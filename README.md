# MC Server information page
This files need mcmmo plugin.

----------

## backup.sh
This file working for backup.<br/>
<br/>
``` BASH
# command
crontab -e


# set crontab
0 4 * * *	[mc_backup_path]/backup.sh
```
<br/>

----------

## for_cron.sh
This file working for update iindex.html page data.<br/>
<br/>
``` BASH
# command
sudo crontab -e


# set crontab
* * * * *	[mc_path]/for_cron.sh
```
<br/>

----------

## index.html
This file need web server(Ex apach or enginx).<br/>
If you want use this file, copy the file and then add in web server page.<br/>
