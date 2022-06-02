#!/bin/bash --login

######### Assign path variables ########
INPUT_DIRECTORY=~/humann/humann-3.0.1/examples
OUTPUT_DIRECTORY=/mnt/scratch/vascokar/marine_iguana/humann/test

######### Modules to Load ##########
module purge
module load Conda/3

########## Code to Run ###########
export PATH=$PATH:$HOME/anaconda3/bin
conda init bash
conda activate biobakery3

humann --input $INPUT_DIRECTORY/demo.fastq.gz --output $OUTPUT_DIRECTORY

conda deactivate
#nohup sh 1-test_humann3.sh > test.log &

#humann --input ~/humann/humann-3.0.1/examples/demo.fastq.gz --output /mnt/scratch/vascokar/marine_iguana/humann/test