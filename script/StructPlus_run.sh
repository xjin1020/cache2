TreeNumber=8000
Leaf=50
Outfile='result_'${TreeNumber}'_'${Leaf}'.txt'
Testfile='test.txt'
Logfile='log_'${TreeNumber}'_'${Leaf}'.txt'

#make clean; make
rm ${Outfile}
rm ${Logfile}

for Alg in 'DOT' 'SOT' #'FTFT' 'FTTF' 'TFFT' 'TFTF' 
do
    echo ${Alg}
    out/${Alg}_StructPlus -ensemble tree_model/tree-ensemble-file_${TreeNumber}_${Leaf} -instances ${Testfile} -maxLeaves $Leaf >> ${Outfile}
    date +"%T"
    echo 'done prog'
    valgrind --tool=cachegrind  --branch-sim=yes --log-file=${Logfile}.app out/${Alg}_StructPlus -ensemble tree_model/tree-ensemble-file_${TreeNumber}_${Leaf} -instances ${Testfile} -maxLeaves $Leaf > /dev/null 2>&1
    date +"%T"
    echo 'done valgrind'
    cat ${Logfile}.app >> ${Logfile}
done    
