#!/bin/bash

# Loop untuk semua file yang berakhiran .sh di direktori bashrock
for file in *.sh; do
    # Mengubah nama file agar ekstensi .sh menjadi .txt untuk output file
    output="${file%.sh}.txt"
    
    # Menggunakan printf untuk mengotomatisasi input ke bashrock.sh
    printf "%s\n%s\n" "$file" "$output" | ./bashrock.sh
done

cd /root/bashrock
mv bashrock.sh run.sh /root
apt install rename
rm *.sh
rename 's/\.txt$/.sh/' *.txt
rm *.txt
