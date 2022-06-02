#!/bin/bash --login  

#First install krona in your conda
# $ conda install -c bioconda krona

########## Modules to Load ##########
module purge
module load Conda/3

########## Code to Run ###########
export PATH=$PATH:$HOME/anaconda3/bin
conda init bash
conda activate

#Modify your input directory and check the files you want to analyze with krona
INPUT_DIRECTORY=/mnt/scratch/vascokar/marine_iguana/shotgun/kraken2

conda activate
ktImportText $INPUT_DIRECTORY/bracken_nohuman.krona.txt -o $INPUT_DIRECTORY/bracken_nohuman_iguana_average_krona.html

conda deactivate