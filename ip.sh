#!/bin/bash

ip=$(curl -s https://api.ipify.org)
oldip="`cat ip.txt`"

if [ "$ip" != "$oldip" ]; then 
`echo $ip > ip.txt`
`mail -s "NYTT IP NUMMER!" "mail@address.com" < ip.txt`
fi
