#!/bin/sh

######### Assign path variables ########
INPUT_DIRECTORY=/mnt/home/vascokar/marine_iguana/data/16s_sequences
OUTPUT_DIRECTORY=/mnt/home/vascokar/marine_iguana/results/fastqc

########## Modules to Load ##########

module purge
module load FastQC/0.11.7-Java-1.8.0_162

###### Runinng FastQC #########
fastqc $INPUT_DIRECTORY/*.fastq.gz -o $OUTPUT_DIRECTORY -t 8
