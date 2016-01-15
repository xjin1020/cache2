#!/bin/bash
# MSLR
# Set F
# Set T
for LOOP in 1 2 3
do
    if [ "$LOOP" = "1" ]; then
       
        sed -i "s/#define T.*/#define T 25 \/\/ s/g" src/SDS_StructPlus1.c
        sed -i "s/#define T.*/#define T 3276 \/\/ s/g" src/SDS_StructPlus2.c
        sed -i "s/#define T.*/#define T 13107 \/\/ s/g" src/SDS_StructPlus3.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDS_StructPlus4.c
        LEAF=10
    fi


    if [ "$LOOP" = "2" ]; then
        sed -i "s/#define T.*/#define T 5 \/\/ s/g" src/SDS_StructPlus1.c
        sed -i "s/#define T.*/#define T 655 \/\/ s/g" src/SDS_StructPlus2.c
        sed -i "s/#define T.*/#define T 2621 \/\/ s/g" src/SDS_StructPlus3.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDS_StructPlus4.c

        LEAF=50
    fi

    if [ "$LOOP" = "3" ]; then
        sed -i "s/#define T.*/#define T 1 \/\/ s/g" src/SDS_StructPlus1.c
        sed -i "s/#define T.*/#define T 218 \/\/ s/g" src/SDS_StructPlus2.c
        sed -i "s/#define T.*/#define T 873 \/\/ s/g" src/SDS_StructPlus3.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDS_StructPlus4.c

        LEAF=150
    fi
    
    make
    
    echo "result of Leaf_num=$LEAF"
    
    for VAR in 1 2 3 4
    do
        echo 'SDS'$VAR
        out/SDS_StructPlus$VAR -ensemble /home/xin_jin/fast_rank/tree_model/MSLR/tree-ensemble-file_20000_$LEAF -instances /home/xin_jin/fast_rank/input/MSLR/1m.txt -maxLeaves $LEAF
    done

    echo
done




