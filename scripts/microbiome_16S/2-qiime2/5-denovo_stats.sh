#!/bin/bash --login

######### Assign path variables ########

WORK_DIRECTORY=/mnt/home/vascokar/marine_iguana/results/qiime2
METADATA_PATH=/mnt/home/vascokar/marine_iguana/data/metadata_marine-iguana_2021-04-05.txt

########## Modules to Load ##########

module purge
module load Conda/3

########## Code to Run ###########

export PATH=$PATH:$HOME/anaconda3/bin
conda init bash
conda activate qiime2-2021.2

cd $WORK_DIRECTORY
qiime feature-table summarize \
  --i-table table-dn-97.qza \
  --o-visualization table-dn-97.qzv \
  --m-sample-metadata-file $METADATA_PATH

qiime feature-table tabulate-seqs \
  --i-data rep-seqs-dn-97.qza \
  --o-visualization  rep-seqs-dn-97.qzv

conda deactivate
