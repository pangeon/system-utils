#!/bin/bash

DOMAIN_NAME="$1"

ssh -t -p 22 vh***@***.vh.net.pl "cd /home/vh***/$DOMAIN_NAME && exec bash"
