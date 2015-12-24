#!/bin/bash

# MS

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
    for FF in 30 100 200 500 1000 2000 3856 6000 9000 12000 15427 20000 30000 50000 75000 100000 
    do
      echo FF=$FF
      sed -i "s/#define F.*/#define F $FF \/\/ d/g" src/DSD_StructPlus1.c
      make
      out/DSD_StructPlus1 -ensemble /home/xin_jin/fast_rank/tree_model/MSLR/tree-ensemble-file_20000_$LEAF -instances /home/xin_jin/fast_rank/input/MSLR/100k.txt -maxLeaves $LEAF
    done
done

