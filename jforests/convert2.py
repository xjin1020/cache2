#!/bin/python
import os

def main():
    size_lst = ['50']
    target_lst = ['100']
    cnt_lst = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

    for size in size_lst:
        for target in target_lst:
            for cnt in cnt_lst:
                os.system('java TreeUtility -input ensembles/100_50/ensemble_'+target+'_'+size+'.txt.'+cnt+' -mode tree > ../tree_model/tree-ensemble-file_'+target+'_'+size+'.'+cnt)
    
if __name__ == '__main__':
    main()

