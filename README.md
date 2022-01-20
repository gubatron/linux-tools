Sometimes you want linux commands to be a little easier to use, or sometimes what you need to do is not there.
The linux way for me is to code these things whether on bash or on python.

I'm aware that some of these commands already exist, but fuck it sometimes it is better to have tools you understand better.

All of the commands are available under the MIT License.

And please, please, fork this, add your own tools, and send back your pull requests, let's see what comes out of this.

Enjoy.

`pskill` - Because pkill doesn't work the way I want to.

`connections` - See how many ESTABLISHED connections exist now.

`hungry` - See which are the most resource hungry process in the system.

`md5` - Because 'md5sum' is too long.

`most_connections` - See which IP addresses have opened more connections to your machine.

`netspeed` - See the transfer rates on your network adapter live.

`purgeTildes` - Get rid of all the left over files emacs can leave recursively from where you stand

`rs` - Restart a service in /etc/init.d/ by just just doing 'rs service'

`ubuntu_upgrade` - dist-upgrade, autoclean, autoremove

`rotating_folder_backup` - Easily backup folders as .tgz files, automatically removing older backups.

```
usage: rotating_folder_backup [-h] --backup-name BACKUP_NAME --source-folder SOURCE_FOLDER --target-folder TARGET_FOLDER [--days DAYS]

options:
  -h, --help            show this help message and exit
  --backup-name BACKUP_NAME, -n BACKUP_NAME
                        The prefix name of the resulting .tgz file
  --source-folder SOURCE_FOLDER, -s SOURCE_FOLDER
                        The source folder you want to backup
  --target-folder TARGET_FOLDER, -t TARGET_FOLDER
                        The target folder where backups will be stored
  --days DAYS, -d DAYS  How many days you want to keep a backup until removing it on the next invocation. (Default is 7 days)
```