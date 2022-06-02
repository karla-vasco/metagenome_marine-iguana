#!/bin/bash --login

INPUT_DIRECTORY=/mnt/scratch/vascokar/marine_iguana/humann/norm_humann
OUTPUT_DIRECTORY=/mnt/scratch/vascokar/marine_iguana/humann/joined_outputs

########## Code to Run ###########
export PATH=$PATH:$HOME/anaconda3/bin
conda init bash
conda activate biobakery3

humann_join_tables --input $INPUT_DIRECTORY --output $OUTPUT_DIRECTORY/humann_genefamilies.tsv --file_name genefamilies_relab
humann_join_tables --input $INPUT_DIRECTORY --output $OUTPUT_DIRECTORY/humann_pathcoverage.tsv --file_name pathcoverage
humann_join_tables --input $INPUT_DIRECTORY --output $OUTPUT_DIRECTORY/humann_pathabundance.tsv --file_name pathabundance_relab

conda deactivate
