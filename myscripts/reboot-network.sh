#!/bin/bash

echo "Restarting network connection"
nmcli device disconnect wlp5s0
sleep 3
nmcli device connect wlp5s0
nmcli device status

