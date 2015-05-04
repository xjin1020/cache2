#!/bin/bash

echo "out/QueryDSD_StructPlusYahoo -ensemble /home/xin_jin/fast_rank/tree_model/yahoo/xin/leaf_50/tree-ensemble-file_20000_50 -instances /home/xin_jin/fast_rank/input/yahoo/200k.txt -maxLeaves 50"
out/QueryDSD_StructPlusYahoo -ensemble /home/xin_jin/fast_rank/tree_model/yahoo/xin/leaf_50/tree-ensemble-file_20000_50 -instances /home/xin_jin/fast_rank/input/yahoo/200k.txt -maxLeaves 50
echo "out/QueryDSD_StructPlusMS -ensemble /home/xin_jin/fast_rank/tree_model/MSLR/tree-ensemble-file_20000_50 -instances /home/xin_jin/fast_rank/input/MSLR/200k.txt -maxLeaves 50"
out/QueryDSD_StructPlusMS -ensemble /home/xin_jin/fast_rank/tree_model/MSLR/tree-ensemble-file_20000_50 -instances /home/xin_jin/fast_rank/input/MSLR/200k.txt -maxLeaves 50
echo "out/QueryDSD_StructPlusMQ -ensemble /home/xin_jin/fast_rank/tree_model/MQ2007/tree-ensemble-file_20000_50 -instances /home/xin_jin/fast_rank/input/MQ2007/200k.txt -maxLeaves 50"
out/QueryDSD_StructPlusMQ -ensemble /home/xin_jin/fast_rank/tree_model/MQ2007/tree-ensemble-file_20000_50 -instances /home/xin_jin/fast_rank/input/MQ2007/200k.txt -maxLeaves 50
echo "out/QueryDSD_StructPlusYahoo -ensemble /home/xin_jin/fast_rank/tree_model/yahoo/xin/leaf_150/tree-ensemble-file_20000_150 -instances /home/xin_jin/fast_rank/input/yahoo/200k.txt -maxLeaves 150"
out/QueryDSD_StructPlusYahoo -ensemble /home/xin_jin/fast_rank/tree_model/yahoo/xin/leaf_150/tree-ensemble-file_20000_150 -instances /home/xin_jin/fast_rank/input/yahoo/200k.txt -maxLeaves 150
echo "out/QueryDSD_StructPlusMS -ensemble /home/xin_jin/fast_rank/tree_model/MSLR/tree-ensemble-file_20000_150 -instances /home/xin_jin/fast_rank/input/MSLR/200k.txt -maxLeaves 150"
out/QueryDSD_StructPlusMS -ensemble /home/xin_jin/fast_rank/tree_model/MSLR/tree-ensemble-file_20000_150 -instances /home/xin_jin/fast_rank/input/MSLR/200k.txt -maxLeaves 150
echo "out/QueryDSD_StructPlusMQ -ensemble /home/xin_jin/fast_rank/tree_model/MQ2007/tree-ensemble-file_20000_150 -instances /home/xin_jin/fast_rank/input/MQ2007/200k.txt -maxLeaves 150"
out/QueryDSD_StructPlusMQ -ensemble /home/xin_jin/fast_rank/tree_model/MQ2007/tree-ensemble-file_20000_150 -instances /home/xin_jin/fast_rank/input/MQ2007/200k.txt -maxLeaves 150
