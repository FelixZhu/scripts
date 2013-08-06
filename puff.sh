#!/usr/bin/expect -f

set timeout 20

spawn sudo ssh -qtfnN -D 443 fs30187570@64.71.141.178

expect "*Password:"
send "sohu\r"

expect "fs30187570@64.71.141.178's password:"
send "a4ed776a\r"

interact
