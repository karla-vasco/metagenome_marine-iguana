#!/bin/bash --login

######### Assign path variables ########
CAT_DIR=/mnt/home/vascokar/CAT-master/CAT_pack
TAXONOMY_DIR=/mnt/home/vascokar/CAT-master/CAT_prepare_20210107/2021-01-07_taxonomy/
FASTA_DIR=/mnt/scratch/vascokar/marine_iguana/ACC/fasta
OUTPUT_DIR=/mnt/scratch/vascokar/marine_iguana/ACC/CAT

### for loop to run all sequences in the input directory ###

cd $OUTPUT_DIR
for f in *.CAT.contig2classification.txt # for each sample f

do
  n=${f%%.CAT.contig2classification.txt} # strip part of file name

###### Runinng CAT #########

$CAT_DIR/CAT summarise -c $FASTA_DIR/${n}.fasta \
-i $OUTPUT_DIR/${n}_contig2classification_names.txt \
-o $OUTPUT_DIR/${n}_CAT_summary
done