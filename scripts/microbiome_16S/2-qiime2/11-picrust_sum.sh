#!/bin/bash --login

######### Assign path variables ########
WORK_DIRECTORY=/mnt/home/vascokar/marine_iguana/results/qiime2

########## Modules to Load ##########

module purge
module load Conda/3

########## Code to Run ###########

export PATH=$PATH:$HOME/anaconda3/bin
conda init bash
conda activate qiime2-2021.2

cd $WORK_DIRECTORY

qiime feature-table summarize \
   --i-table q2-picrust2_output/pathway_abundance.qza \
   --o-visualization q2-picrust2_output/pathway_abundance.qzv

conda deactivate
