#!/usr/bin/expect -f

set timeout -1

spawn bluetoothctl
expect "*bluetooth*# "
send -- "default-agent\r"
expect "*agent* Authorize service*(yes/no): "
send -- "yes\r"
expect "*Wireless Controller*# "
send -- "quit\r"
