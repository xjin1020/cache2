Xun wrote:
/src: source code
/util: utility code
/script: auxiliary scripts for stat gathering and parsing
/out: generated binary files
/jforests: the tool to generate tree models

Data-related resources that are too big to put in github, are placed under wuhan:~xin_jin/fast_rank, including 
/input: the input files
/tree_model: the generated tree models
/util/ensembles: intermediate ensemble files 

By Xin Jin
sample_run.sh: run a batch of jobs for LEAF number varies from 10 to 50 and 150.
post.sh: after running sample_run.sh, use post.sh to generate google_doc results

Nov. 12 2015
src/QS.c: implement Italian group's QS algorithm
src/QS_4.c: QS algorithm with jump 4 at a time, even slower than QS.c

Jan. 7. 2016
BWQS results are generated using scripts "sample_run_BWQS_*.sh"
To run leaf number which is not 8, 16, 32, 64, just use the closest bigger
one. E.g. to run leaf number = 10 case, just use 16. 
If leaf number > 64, use BWQSlarger64 to run.
