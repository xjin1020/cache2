#!/bin/bash

# Yahoo
# Set F
sed -i "s/#define F.*/#define F 1928 \/\/ d/g" src/SDSD_StructPlus3.c

# Set T
for LOOP in 1 2 3
do
    if [ "$LOOP" = "1" ]; then
       sed -i "s/#define T.*/#define T 1638 \/\/ s/g" src/SDSD_StructPlus3.c
       LEAF=10
    fi

    if [ "$LOOP" = "2" ]; then
        sed -i "s/#define T.*/#define T 327 \/\/ s/g" src/SDSD_StructPlus3.c
        LEAF=50
    fi

    if [ "$LOOP" = "3" ]; then
        sed -i "s/#define T.*/#define T 109 \/\/ s/g" src/SDSD_StructPlus3.c
        LEAF=150
    fi
    
    make
    
    echo "result of Leaf_num=$LEAF"
    echo 'SDSD3'
    out/SDSD_StructPlus3 -ensemble /home/xin_jin/fast_rank/tree_model/MSLR/tree-ensemble-file_20000_$LEAF -instances /home/xin_jin/fast_rank/input/MSLR/1.txt -maxLeaves $LEAF
    echo
done




