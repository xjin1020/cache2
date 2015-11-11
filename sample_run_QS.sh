#!/bin/bash

echo "out/QS -ensemble /home/xin_jin/fast_rank/tree_model/yahoo/xin/leaf_150/tree-ensemble-file_1000_150 -instances /home/xin_jin/fast_rank/input/yahoo/1k.txt -maxLeaves 150"
make
out/QS -ensemble /home/xin_jin/fast_rank/tree_model/yahoo/xin/leaf_150/tree-ensemble-file_1000_150 -instances /home/xin_jin/fast_rank/input/yahoo/1k.txt -maxLeaves 150
