#!/bin/bash
# example custom fact, make executable in /etc/facter/facts.d
echo "rootsize=$(df -h --output=pcent / | sed 1d)"
