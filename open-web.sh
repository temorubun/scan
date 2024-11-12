#!/bin/bash

# Rentang IP dari 192.168.4.1 hingga 192.168.4.10
for i in {1..10}
do
    # Membuka halaman web di browser default di Windows
    start "http://192.168.4.$i"
    sleep 1  # Tunggu 1 detik sebelum membuka IP berikutnya
done
