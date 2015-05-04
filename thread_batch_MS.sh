#!/bin/bash
# MSLR
# Set F
sed -i "s/#define F.*/#define F 15 \/\/ d/g" src/ThreadSDSD_StructPlus1.c
sed -i "s/#define F.*/#define F 30 \/\/ d/g" src/ThreadSDSD_StructPlus2.c
sed -i "s/#define F.*/#define F 1928 \/\/ d/g" src/ThreadSDSD_StructPlus3.c
sed -i "s/#define F.*/#define F 3856 \/\/ d/g" src/ThreadSDSD_StructPlus4.c
sed -i "s/#define F.*/#define F 5785 \/\/ d/g" src/ThreadSDSD_StructPlus5.c
sed -i "s/#define F.*/#define F 7713 \/\/ d/g" src/ThreadSDSD_StructPlus6.c
sed -i "s/#define F.*/#define F 100000 \/\/ d/g" src/ThreadSDSD_StructPlus7.c

sed -i "s/#define F.*/#define F 15 \/\/ d/g" src/ThreadDSDS_StructPlus1.c
sed -i "s/#define F.*/#define F 3856 \/\/ d/g" src/ThreadDSDS_StructPlus2.c
sed -i "s/#define F.*/#define F 1928 \/\/ d/g" src/ThreadDSDS_StructPlus3.c
sed -i "s/#define F.*/#define F 3856 \/\/ d/g" src/ThreadDSDS_StructPlus4.c
sed -i "s/#define F.*/#define F 1928 \/\/ d/g" src/ThreadDSDS_StructPlus5.c
sed -i "s/#define F.*/#define F 100000 \/\/ d/g" src/ThreadDSDS_StructPlus6.c
sed -i "s/#define F.*/#define F 100000 \/\/ d/g" src/ThreadDSDS_StructPlus7.c

sed -i "s/#define F.*/#define F 30 \/\/ d/g" src/ThreadDSD_StructPlus1.c
sed -i "s/#define F.*/#define F 3856 \/\/ d/g" src/ThreadDSD_StructPlus2.c
sed -i "s/#define F.*/#define F 7713 \/\/ d/g" src/ThreadDSD_StructPlus3.c
sed -i "s/#define F.*/#define F 100000 \/\/ d/g" src/ThreadDSD_StructPlus4.c

# Set T
for LOOP in 1 2 3
do
    if [ "$LOOP" = "1" ]; then
        sed -i "s/#define T.*/#define T 12 \/\/ s/g" src/ThreadSDSD_StructPlus1.c
        sed -i "s/#define T.*/#define T 3276 \/\/ s/g" src/ThreadSDSD_StructPlus2.c
        sed -i "s/#define T.*/#define T 1638 \/\/ s/g" src/ThreadSDSD_StructPlus3.c
        sed -i "s/#define T.*/#define T 3276 \/\/ s/g" src/ThreadSDSD_StructPlus4.c
        sed -i "s/#define T.*/#define T 1638 \/\/ s/g" src/ThreadSDSD_StructPlus5.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/ThreadSDSD_StructPlus6.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/ThreadSDSD_StructPlus7.c
        
        sed -i "s/#define T.*/#define T 12 \/\/ s/g" src/ThreadDSDS_StructPlus1.c
        sed -i "s/#define T.*/#define T 25 \/\/ s/g" src/ThreadDSDS_StructPlus2.c
        sed -i "s/#define T.*/#define T 1638 \/\/ s/g" src/ThreadDSDS_StructPlus3.c
        sed -i "s/#define T.*/#define T 3276 \/\/ s/g" src/ThreadDSDS_StructPlus4.c
        sed -i "s/#define T.*/#define T 4915 \/\/ s/g" src/ThreadDSDS_StructPlus5.c
        sed -i "s/#define T.*/#define T 6553 \/\/ s/g" src/ThreadDSDS_StructPlus6.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/ThreadDSDS_StructPlus7.c
        
        sed -i "s/#define T.*/#define T 25 \/\/ s/g" src/ThreadSDS_StructPlus1.c
        sed -i "s/#define T.*/#define T 3276 \/\/ s/g" src/ThreadSDS_StructPlus2.c
        sed -i "s/#define T.*/#define T 6553 \/\/ s/g" src/ThreadSDS_StructPlus3.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/ThreadSDS_StructPlus4.c
        LEAF=10
    fi


    if [ "$LOOP" = "2" ]; then
        sed -i "s/#define T.*/#define T 2 \/\/ s/g" src/ThreadSDSD_StructPlus1.c
        sed -i "s/#define T.*/#define T 655 \/\/ s/g" src/ThreadSDSD_StructPlus2.c
        sed -i "s/#define T.*/#define T 327 \/\/ s/g" src/ThreadSDSD_StructPlus3.c
        sed -i "s/#define T.*/#define T 655 \/\/ s/g" src/ThreadSDSD_StructPlus4.c
        sed -i "s/#define T.*/#define T 327 \/\/ s/g" src/ThreadSDSD_StructPlus5.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/ThreadSDSD_StructPlus6.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/ThreadSDSD_StructPlus7.c

        sed -i "s/#define T.*/#define T 2 \/\/ s/g" src/ThreadDSDS_StructPlus1.c
        sed -i "s/#define T.*/#define T 5 \/\/ s/g" src/ThreadDSDS_StructPlus2.c
        sed -i "s/#define T.*/#define T 327 \/\/ s/g" src/ThreadDSDS_StructPlus3.c
        sed -i "s/#define T.*/#define T 655 \/\/ s/g" src/ThreadDSDS_StructPlus4.c
        sed -i "s/#define T.*/#define T 983 \/\/ s/g" src/ThreadDSDS_StructPlus5.c
        sed -i "s/#define T.*/#define T 1310 \/\/ s/g" src/ThreadDSDS_StructPlus6.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/ThreadDSDS_StructPlus7.c

        sed -i "s/#define T.*/#define T 5 \/\/ s/g" src/ThreadSDS_StructPlus1.c
        sed -i "s/#define T.*/#define T 655 \/\/ s/g" src/ThreadSDS_StructPlus2.c
        sed -i "s/#define T.*/#define T 1310 \/\/ s/g" src/ThreadSDS_StructPlus3.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/ThreadSDS_StructPlus4.c

        LEAF=50
    fi

    if [ "$LOOP" = "3" ]; then
        sed -i "s/#define T.*/#define T 1 \/\/ s/g" src/ThreadSDSD_StructPlus1.c
        sed -i "s/#define T.*/#define T 218 \/\/ s/g" src/ThreadSDSD_StructPlus2.c
        sed -i "s/#define T.*/#define T 109 \/\/ s/g" src/ThreadSDSD_StructPlus3.c
        sed -i "s/#define T.*/#define T 218 \/\/ s/g" src/ThreadSDSD_StructPlus4.c
        sed -i "s/#define T.*/#define T 109 \/\/ s/g" src/ThreadSDSD_StructPlus5.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/ThreadSDSD_StructPlus6.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/ThreadSDSD_StructPlus7.c

        sed -i "s/#define T.*/#define T 1 \/\/ s/g" src/ThreadDSDS_StructPlus1.c
        sed -i "s/#define T.*/#define T 1 \/\/ s/g" src/ThreadDSDS_StructPlus2.c
        sed -i "s/#define T.*/#define T 109 \/\/ s/g" src/ThreadDSDS_StructPlus3.c
        sed -i "s/#define T.*/#define T 218 \/\/ s/g" src/ThreadDSDS_StructPlus4.c
        sed -i "s/#define T.*/#define T 327 \/\/ s/g" src/ThreadDSDS_StructPlus5.c
        sed -i "s/#define T.*/#define T 436 \/\/ s/g" src/ThreadDSDS_StructPlus6.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/ThreadDSDS_StructPlus7.c

        sed -i "s/#define T.*/#define T 1 \/\/ s/g" src/ThreadSDS_StructPlus1.c
        sed -i "s/#define T.*/#define T 218 \/\/ s/g" src/ThreadSDS_StructPlus2.c
        sed -i "s/#define T.*/#define T 436 \/\/ s/g" src/ThreadSDS_StructPlus3.c
        sed -i "s/#define T.*/#define T 20000 \/\/ s/g" src/ThreadSDS_StructPlus4.c

        LEAF=150
    fi
    
    make
    
    echo "result of Leaf_num=$LEAF"
    for VAR in 1 2 3 4 5 6 7
    do
        echo 'SDSD'$VAR
        out/ThreadSDSD_StructPlus$VAR -ensemble /home/xin_jin/fast_rank/tree_model/MSLR/tree-ensemble-file_20000_$LEAF -instances /home/xin_jin/fast_rank/input/MSLR/400k.txt -maxLeaves $LEAF
    done
    for VAR in 1 2 3 4 5 6 7
    do
        echo 'DSDS'$VAR
        out/ThreadDSDS_StructPlus$VAR -ensemble /home/xin_jin/fast_rank/tree_model/MSLR/tree-ensemble-file_20000_$LEAF -instances /home/xin_jin/fast_rank/input/MSLR/400k.txt -maxLeaves $LEAF
    done

    for VAR in 1 2 3 4
    do
        echo 'SDS'$VAR
        out/ThreadSDS_StructPlus$VAR -ensemble /home/xin_jin/fast_rank/tree_model/MSLR/tree-ensemble-file_20000_$LEAF -instances /home/xin_jin/fast_rank/input/MSLR/400k.txt -maxLeaves $LEAF
    done

    for VAR in 1 2 3 4
    do
        echo 'DSD'$VAR
        out/ThreadDSD_StructPlus$VAR -ensemble /home/xin_jin/fast_rank/tree_model/MSLR/tree-ensemble-file_20000_$LEAF -instances /home/xin_jin/fast_rank/input/MSLR/400k.txt -maxLeaves $LEAF
    done
    echo
done




