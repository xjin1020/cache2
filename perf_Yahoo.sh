#!/bin/bash

# Yahoo

for LOOP in 1 2 3
do
    if [ "$LOOP" = "1" ]; then
       LEAF=10
    fi

    if [ "$LOOP" = "2" ]; then
       LEAF=50
    fi

    if [ "$LOOP" = "3" ]; then
       LEAF=150
    fi
    
    echo "result of Leaf_num=$LEAF"
    for FF in 5 20 50 100 200 375 747 1500 2000 2500 2989 5000 10000 25000 50000 100000 
    do
      echo FF=$FF
      sed -i "s/#define F.*/#define F $FF \/\/ d/g" src/DSD_StructPlus1.c
      make
      perf stat -e LLC-loads,LLC-load-misses,L1-dcache-loads,L1-dcache-load-misses out/DSD_StructPlus1 -ensemble /home/xin_jin/fast_rank/tree_model/yahoo/xin/leaf_$LEAF/tree-ensemble-file_20000_$LEAF -instances /home/xin_jin/fast_rank/input/yahoo/100k.txt -maxLeaves $LEAF
    done
done

