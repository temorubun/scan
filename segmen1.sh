#!/bin/bash

# Set the IP range
network="192.168.1"

# Loop through IPs from 1 to 254
for ip in {1..254}; do
  # Ping each IP in the network segment and check if it is reachable
  ping -c 1 -W 1 $network.$ip > /dev/null 2>&1
  
  # If the ping was successful, print the IP
  if [ $? -eq 0 ]; then
    echo "Server aktif: $network.$ip"
  fi
done

