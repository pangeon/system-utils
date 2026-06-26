#!/bin/bash

DOMAIN_NAME="$1"

ssh -t -p 22 vh14176@v103.vh.net.pl "cd /home/vh14176/$DOMAIN_NAME && exec bash"
