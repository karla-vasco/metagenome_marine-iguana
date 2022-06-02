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

qiime diversity alpha-rarefaction \
  --i-table table-dn-97.qza \
  --i-phylogeny insertion-tree.qza \
  --p-max-depth 46999 \
  --m-metadata-file $METADATA_PATH \
  --o-visualization alpha-rarefaction.qzv

conda deactivate

##### Final time stamp ######
echo Job finished at `date '+%T %a %d %b %Y'`
