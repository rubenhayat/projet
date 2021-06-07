#!/bin/sh

#ce script necessite de creer les variables d environnement HOST, LOGIN et PASSWORD



/usr/bin/expect <<EOD 
spawn sftp -oPort=22 "$LOGIN@$HOST"
expect "Password:"
send "$PASSWORD\n"
expect "sftp>"
send "get readme.txt\n"
expect "sfpt>"
send "exit\n"
EOD




