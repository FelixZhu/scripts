#!/usr/bin/expect -f

set timeout 20

spawn ssh root@10.13.95.47
#10.13.94.204
expect "*password:"
send "sohu123\r"

interact

