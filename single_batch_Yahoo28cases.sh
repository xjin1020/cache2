#!/bin/bash

# Yahoo
# Set F
sed -i "s/#define F.*/#define F 3 \/\/ d/g" src/SDSD_StructPlus1.c
sed -i "s/#define F.*/#define F 3 \/\/ d/g" src/SDSD_StructPlus2.c
sed -i "s/#define F.*/#define F 3 \/\/ d/g" src/SDSD_StructPlus3.c
sed -i "s/#define F.*/#define F 3 \/\/ d/g" src/SDSD_StructPlus4.c
sed -i "s/#define F.*/#define F 373 \/\/ d/g" src/SDSD_StructPlus5.c
sed -i "s/#define F.*/#define F 373 \/\/ d/g" src/SDSD_StructPlus6.c
sed -i "s/#define F.*/#define F 373 \/\/ d/g" src/SDSD_StructPlus7.c
sed -i "s/#define F.*/#define F 1494 \/\/ d/g" src/SDSD_StructPlus8.c
sed -i "s/#define F.*/#define F 1494 \/\/ d/g" src/SDSD_StructPlus9.c
sed -i "s/#define F.*/#define F 100000 \/\/ d/g" src/SDSD_StructPlus10.c

sed -i "s/#define F.*/#define F 3 \/\/ d/g" src/DSDS_StructPlus1.c
sed -i "s/#define F.*/#define F 373 \/\/ d/g" src/DSDS_StructPlus2.c
sed -i "s/#define F.*/#define F 1494 \/\/ d/g" src/DSDS_StructPlus3.c
sed -i "s/#define F.*/#define F 100000 \/\/ d/g" src/DSDS_StructPlus4.c
sed -i "s/#define F.*/#define F 373 \/\/ d/g" src/DSDS_StructPlus5.c
sed -i "s/#define F.*/#define F 1494 \/\/ d/g" src/DSDS_StructPlus6.c
sed -i "s/#define F.*/#define F 100000 \/\/ d/g" src/DSDS_StructPlus7.c
sed -i "s/#define F.*/#define F 1494 \/\/ d/g" src/DSDS_StructPlus8.c
sed -i "s/#define F.*/#define F 100000 \/\/ d/g" src/DSDS_StructPlus9.c
sed -i "s/#define F.*/#define F 100000 \/\/ d/g" src/DSDS_StructPlus10.c

sed -i "s/#define F.*/#define F 5 \/\/ d/g" src/DSD_StructPlus1.c
sed -i "s/#define F.*/#define F 373 \/\/ d/g" src/DSD_StructPlus2.c
sed -i "s/#define F.*/#define F 1494 \/\/ d/g" src/DSD_StructPlus3.c
sed -i "s/#define F.*/#define F 100000 \/\/ d/g" src/DSD_StructPlus4.c

# Set T
for LOOP in 1 2 3
do
    if [ "$LOOP" = "1" ]; then
        sed -i "s/#define T.*/#define T 12 \/\/ s/g" src/SDSD_StructPlus1.c
        sed -i "s/#define T.*/#define T 1638 \/\/ s/g" src/SDSD_StructPlus2.c
        sed -i "s/#define T.*/#define T 6553 \/\/ s/g" src/SDSD_StructPlus3.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDSD_StructPlus4.c
        sed -i "s/#define T.*/#define T 1638 \/\/ s/g" src/SDSD_StructPlus5.c
        sed -i "s/#define T.*/#define T 6553 \/\/ s/g" src/SDSD_StructPlus6.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDSD_StructPlus7.c
        sed -i "s/#define T.*/#define T 6553 \/\/ s/g" src/SDSD_StructPlus8.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDSD_StructPlus9.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDSD_StructPlus10.c
        
        sed -i "s/#define T.*/#define T 12 \/\/ s/g" src/DSDS_StructPlus1.c
        sed -i "s/#define T.*/#define T 12 \/\/ s/g" src/DSDS_StructPlus2.c
        sed -i "s/#define T.*/#define T 12 \/\/ s/g" src/DSDS_StructPlus3.c
        sed -i "s/#define T.*/#define T 12 \/\/ s/g" src/DSDS_StructPlus4.c
        sed -i "s/#define T.*/#define T 1638 \/\/ s/g" src/DSDS_StructPlus5.c
        sed -i "s/#define T.*/#define T 1638 \/\/ s/g" src/DSDS_StructPlus6.c
        sed -i "s/#define T.*/#define T 1638 \/\/ s/g" src/DSDS_StructPlus7.c
        sed -i "s/#define T.*/#define T 6553 \/\/ s/g" src/DSDS_StructPlus8.c
        sed -i "s/#define T.*/#define T 6553 \/\/ s/g" src/DSDS_StructPlus9.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/DSDS_StructPlus10.c
        
        sed -i "s/#define T.*/#define T 12 \/\/ s/g" src/SDS_StructPlus1.c
        sed -i "s/#define T.*/#define T 1638 \/\/ s/g" src/SDS_StructPlus2.c
        sed -i "s/#define T.*/#define T 6553 \/\/ s/g" src/SDS_StructPlus3.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDS_StructPlus4.c
        LEAF=10
    fi


    if [ "$LOOP" = "2" ]; then
        sed -i "s/#define T.*/#define T 2 \/\/ s/g" src/SDSD_StructPlus1.c
        sed -i "s/#define T.*/#define T 327 \/\/ s/g" src/SDSD_StructPlus2.c
        sed -i "s/#define T.*/#define T 1310 \/\/ s/g" src/SDSD_StructPlus3.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDSD_StructPlus4.c
        sed -i "s/#define T.*/#define T 327 \/\/ s/g" src/SDSD_StructPlus5.c
        sed -i "s/#define T.*/#define T 1310 \/\/ s/g" src/SDSD_StructPlus6.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDSD_StructPlus7.c
        sed -i "s/#define T.*/#define T 1310 \/\/ s/g" src/SDSD_StructPlus8.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDSD_StructPlus9.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDSD_StructPlus10.c

        sed -i "s/#define T.*/#define T 2 \/\/ s/g" src/DSDS_StructPlus1.c
        sed -i "s/#define T.*/#define T 2 \/\/ s/g" src/DSDS_StructPlus2.c
        sed -i "s/#define T.*/#define T 2 \/\/ s/g" src/DSDS_StructPlus3.c
        sed -i "s/#define T.*/#define T 2 \/\/ s/g" src/DSDS_StructPlus4.c
        sed -i "s/#define T.*/#define T 327 \/\/ s/g" src/DSDS_StructPlus5.c
        sed -i "s/#define T.*/#define T 327 \/\/ s/g" src/DSDS_StructPlus6.c
        sed -i "s/#define T.*/#define T 327 \/\/ s/g" src/DSDS_StructPlus7.c
        sed -i "s/#define T.*/#define T 1310 \/\/ s/g" src/DSDS_StructPlus8.c
        sed -i "s/#define T.*/#define T 1310 \/\/ s/g" src/DSDS_StructPlus9.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/DSDS_StructPlus10.c

        sed -i "s/#define T.*/#define T 2 \/\/ s/g" src/SDS_StructPlus1.c
        sed -i "s/#define T.*/#define T 327 \/\/ s/g" src/SDS_StructPlus2.c
        sed -i "s/#define T.*/#define T 1310 \/\/ s/g" src/SDS_StructPlus3.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDS_StructPlus4.c

        LEAF=50
    fi

    if [ "$LOOP" = "3" ]; then
        sed -i "s/#define T.*/#define T 1 \/\/ s/g" src/SDSD_StructPlus1.c
        sed -i "s/#define T.*/#define T 109 \/\/ s/g" src/SDSD_StructPlus2.c
        sed -i "s/#define T.*/#define T 436 \/\/ s/g" src/SDSD_StructPlus3.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDSD_StructPlus4.c
        sed -i "s/#define T.*/#define T 109 \/\/ s/g" src/SDSD_StructPlus5.c
        sed -i "s/#define T.*/#define T 436 \/\/ s/g" src/SDSD_StructPlus6.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDSD_StructPlus7.c
        sed -i "s/#define T.*/#define T 436 \/\/ s/g" src/SDSD_StructPlus8.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDSD_StructPlus9.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDSD_StructPlus10.c

        sed -i "s/#define T.*/#define T 1 \/\/ s/g" src/DSDS_StructPlus1.c
        sed -i "s/#define T.*/#define T 1 \/\/ s/g" src/DSDS_StructPlus2.c
        sed -i "s/#define T.*/#define T 1 \/\/ s/g" src/DSDS_StructPlus3.c
        sed -i "s/#define T.*/#define T 1 \/\/ s/g" src/DSDS_StructPlus4.c
        sed -i "s/#define T.*/#define T 109 \/\/ s/g" src/DSDS_StructPlus5.c
        sed -i "s/#define T.*/#define T 109 \/\/ s/g" src/DSDS_StructPlus6.c
        sed -i "s/#define T.*/#define T 109 \/\/ s/g" src/DSDS_StructPlus7.c
        sed -i "s/#define T.*/#define T 436 \/\/ s/g" src/DSDS_StructPlus8.c
        sed -i "s/#define T.*/#define T 436 \/\/ s/g" src/DSDS_StructPlus9.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/DSDS_StructPlus10.c

        sed -i "s/#define T.*/#define T 1 \/\/ s/g" src/SDS_StructPlus1.c
        sed -i "s/#define T.*/#define T 109 \/\/ s/g" src/SDS_StructPlus2.c
        sed -i "s/#define T.*/#define T 436 \/\/ s/g" src/SDS_StructPlus3.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/SDS_StructPlus4.c

        LEAF=150
    fi
    
    make
    
    echo "result of Leaf_num=$LEAF"
    for VAR in 1 2 3 4 5 6 7 8 9 10
    do
        echo 'SDSD'$VAR
        out/SDSD_StructPlus$VAR -ensemble /home/xin_jin/fast_rank/tree_model/yahoo/xin/leaf_$LEAF/tree-ensemble-file_20000_$LEAF -instances /home/xin_jin/fast_rank/input/yahoo/100k.txt -maxLeaves $LEAF
    done
    for VAR in 1 2 3 4 5 6 7 8 9 10
    do
        echo 'DSDS'$VAR
        out/DSDS_StructPlus$VAR -ensemble /home/xin_jin/fast_rank/tree_model/yahoo/xin/leaf_$LEAF/tree-ensemble-file_20000_$LEAF -instances /home/xin_jin/fast_rank/input/yahoo/100k.txt -maxLeaves $LEAF
    done

    for VAR in 1 2 3 4
    do
        echo 'SDS'$VAR
        out/SDS_StructPlus$VAR -ensemble /home/xin_jin/fast_rank/tree_model/yahoo/xin/leaf_$LEAF/tree-ensemble-file_20000_$LEAF -instances /home/xin_jin/fast_rank/input/yahoo/100k.txt -maxLeaves $LEAF
    done

    for VAR in 1 2 3 4
    do
        echo 'DSD'$VAR
        out/DSD_StructPlus$VAR -ensemble /home/xin_jin/fast_rank/tree_model/yahoo/xin/leaf_$LEAF/tree-ensemble-file_20000_$LEAF -instances /home/xin_jin/fast_rank/input/yahoo/100k.txt -maxLeaves $LEAF
    done
    echo
done




