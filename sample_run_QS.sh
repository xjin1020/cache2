#!/bin/bash

#out/QS8bit -ensemble /home/xin_jin/fast_rank/tree_model/MSLR/tree-ensemble-file_1000_8 -instances /home/xin_jin/fast_rank/input/MSLR/1k.txt -maxLeaves 8
out/QS16bitopt -ensemble /home/xin_jin/fast_rank/tree_model/yahoo/xin/leaf_16/tree-ensemble-file_1000_16 -instances /home/xin_jin/fast_rank/input/yahoo/1k.txt -maxLeaves 16
