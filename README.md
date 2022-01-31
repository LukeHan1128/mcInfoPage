# mcInfoPage
MC Server information page


This files need mcmmo plugin.


<h2>backup.sh<h2>
This file working for backup.

<code>
# command
crontab -e


# set crontab
0 4 * * *	[mc_backup_path]/backup.sh
</code>




<h2>for_cron.sh</h2>
This file working for update iindex.html page data.

<code>
# command
sudo crontab -e


# set crontab
* * * * *	[mc_path]/for_cron.sh
</code>




<h2>index.html</h2>
This file need web server(Ex apach or enginx).
If you want use this file, copy the file and then add in web server page.
