#!/bin/bash
java TreeUtility -input /home/xin_jin/mydata/jforests/23features/ensembles/ensemble_20000_10.txt -mode tree > tree-ensemble-file_20000_10
java TreeUtility -input /home/xin_jin/mydata/jforests/23features/ensembles/ensemble_20000_50.txt -mode tree > tree-ensemble-file_20000_50
java TreeUtility -input /home/xin_jin/mydata/jforests/23features/ensembles/ensemble_20000_150.txt -mode tree > tree-ensemble-file_20000_150
    

