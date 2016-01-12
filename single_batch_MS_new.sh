#!/bin/bash
# MSLR
# Set F
sed -i "s/#define F.*/#define F 30 \/\/ d/g" src/SDSD_StructPlus8.c
sed -i "s/#define F.*/#define F 30 \/\/ d/g" src/SDSD_StructPlus9.c
sed -i "s/#define F.*/#define F 3856 \/\/ d/g" src/SDSD_StructPlus10.c

sed -i "s/#define F.*/#define F 15427 \/\/ d/g" src/DSDS_StructPlus8.c
sed -i "s/#define F.*/#define F 100000 \/\/ d/g" src/DSDS_StructPlus9.c
sed -i "s/#define F.*/#define F 100000 \/\/ d/g" src/DSDS_StructPlus10.c

# Set T
for LOOP in 1 2 3
do
    if [ "$LOOP" = "1" ]; then
        sed -i "s/#define T.*/#define T 13107 \/\/ s/g" src/SDSD_StructPlus8.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDSD_StructPlus9.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDSD_StructPlus10.c
        
        sed -i "s/#define T.*/#define T 25 \/\/ s/g" src/DSDS_StructPlus8.c
        sed -i "s/#define T.*/#define T 25 \/\/ s/g" src/DSDS_StructPlus9.c
        sed -i "s/#define T.*/#define T 3276 \/\/ s/g" src/DSDS_StructPlus10.c
        LEAF=10
    fi


    if [ "$LOOP" = "2" ]; then
        sed -i "s/#define T.*/#define T 2621 \/\/ s/g" src/SDSD_StructPlus8.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDSD_StructPlus9.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDSD_StructPlus10.c

        sed -i "s/#define T.*/#define T 5 \/\/ s/g" src/DSDS_StructPlus8.c
        sed -i "s/#define T.*/#define T 5 \/\/ s/g" src/DSDS_StructPlus9.c
        sed -i "s/#define T.*/#define T 655 \/\/ s/g" src/DSDS_StructPlus10.c

        LEAF=50
    fi

    if [ "$LOOP" = "3" ]; then
        sed -i "s/#define T.*/#define T 873 \/\/ s/g" src/SDSD_StructPlus8.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDSD_StructPlus9.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDSD_StructPlus10.c

        sed -i "s/#define T.*/#define T 1 \/\/ s/g" src/DSDS_StructPlus8.c
        sed -i "s/#define T.*/#define T 1 \/\/ s/g" src/DSDS_StructPlus9.c
        sed -i "s/#define T.*/#define T 218 \/\/ s/g" src/DSDS_StructPlus10.c

        LEAF=150
    fi
    
    make
    
    echo "result of Leaf_num=$LEAF"
    for VAR in 8 9 10 
    do
        echo 'SDSD'$VAR
        out/SDSD_StructPlus$VAR -ensemble /home/xin_jin/fast_rank/tree_model/MSLR/tree-ensemble-file_20000_$LEAF -instances /home/xin_jin/fast_rank/input/MSLR/100k.txt -maxLeaves $LEAF
    done
    for VAR in 8 9 10
    do
        echo 'DSDS'$VAR
        out/DSDS_StructPlus$VAR -ensemble /home/xin_jin/fast_rank/tree_model/MSLR/tree-ensemble-file_20000_$LEAF -instances /home/xin_jin/fast_rank/input/MSLR/100k.txt -maxLeaves $LEAF
    done

    echo
done




