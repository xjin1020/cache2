This github repository includes below parts:\\
  /src: source code\\
  /util: utility code
  /script: auxiliary scripts for stat gathering and parsing
  makefile
  /out: generated binary files
  /jforests: the tool to generate tree models

Data-related resources that are too big to put in github, are placed under zarqa:/tmp/fast_rank, including 
  /input: the input files
  /tree_model: the generated tree models
  /util/ensembles: intermediate ensemble files 

Note that this is not the public release version, because it includes a lot of our auxiliary scripts and unused source code.

sample_run.sh: run a batch of jobs for LEAF number varies from 10 to 50 and 150.

post.sh: after running sample_run.sh, use post.sh to generate google_doc results
