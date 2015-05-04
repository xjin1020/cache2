#/bin/bash
awk ' $1=="Time" {print $6}' single_result2_Yahoo_MS_MQ > temp
./gen_googledoc
rm temp
