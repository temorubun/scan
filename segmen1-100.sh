#!/bin/bash

# Loop melalui segmen dari 1 sampai 100
for segment in {1..100}; do
  # Loop melalui IP dari 1 sampai 254
  for ip in {1..254}; do
    # Ping setiap IP di segmen dan periksa apakah dapat dijangkau
    ping -c 1 -W 1 192.168.$segment.$ip > /dev/null 2>&1

    # Jika ping berhasil, tampilkan IP yang aktif
    if [ $? -eq 0 ]; then
      echo "Server aktif: 192.168.$segment.$ip"
    fi
  done
done
