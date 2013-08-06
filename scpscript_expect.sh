#!/usr/bin/expect -f

set timeout 20

spawn scp [lindex $argv 0] [lindex $argv 1]
puts "scp [lindex $argv 0] [lindex $argv 1]"
expect "*password"
send "sohu123\r"

interact
