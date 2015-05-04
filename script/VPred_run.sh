TreeNumber=$1
Leaf=150
echo "4_VPred:" >> result.txt;
out/4_VPred -ensemble tree_model/tree-ensemble-file_${TreeNumber}_${Leaf} -instances test.txt -maxLeaves $Leaf >> result.txt;
echo "4_VPred finished";
echo "8_VPred:" >> result.txt;
out/8_VPred -ensemble tree_model/tree-ensemble-file_${TreeNumber}_${Leaf} -instances test.txt -maxLeaves $Leaf >> result.txt;
echo "8_VPred finished";
echo "16_VPred:" >> result.txt;
out/16_VPred -ensemble tree_model/tree-ensemble-file_${TreeNumber}_${Leaf} -instances test.txt -maxLeaves $Leaf >> result.txt;
echo "16_VPred finished";
