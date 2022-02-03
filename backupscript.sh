#!/bin/bash
cd /backup
mysqldump --all-databases > dump-$( date '+%Y-%m-%d_%H-%M-%S' ).sql -u root -p
tar -cvzf backup-$( date '+%Y-%m-%d_%H-%M-%S' ).tar.gz /var/www/html/
