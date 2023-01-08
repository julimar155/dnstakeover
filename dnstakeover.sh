#!/bin/bash

apt install seclists

for linha in $(cat /usr/share/seclists/Discovery/DNS/subdomains-top1million-110000.txt);
do host -t cname $linha.$1 | grep "alias for";
done

