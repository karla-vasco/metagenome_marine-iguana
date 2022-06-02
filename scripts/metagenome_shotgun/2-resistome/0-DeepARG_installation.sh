#DeepARG installation
#https://bitbucket.org/gusphdproj/deeparg-ss/src/master/

conda create -n deeparg_env python=2.7.18
conda activate deeparg_env
conda install -c bioconda diamond==0.9.24
pip install deeparg==1.0.2 --ignore-installed certifi
deeparg download_data -o /path/to/local/directory/

conda install -c bioconda trimmomatic
conda install -c bioconda vsearch
conda install -c bioconda bedtools
conda install -c bioconda bowtie2
conda install -c bioconda samtools
