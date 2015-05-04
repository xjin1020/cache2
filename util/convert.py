#!/bin/python
import os

def main():
    size_lst = ['50'] #['50', '150']
    target_lst = ['2000', '10000']
    dataset = 'MQ2008'

    for size in size_lst:
        for target in target_lst:
            os.system('java TreeUtility -input ensembles/'+dataset+'/ensemble_'+target+'_'+size+'.txt -mode tree > ../tree_model/'+dataset+'/tree-ensemble-file_'+target+'_'+size)
    
if __name__ == '__main__':
    main()

