#!/bin/bash --login

########CONCATENATING CAT outputs #####################
cd /mnt/scratch/vascokar/marine_iguana/ACC_deeparg/CAT

awk -v OFS='\t' '{print $0, FILENAME}' *_names.txt > CAT_names_deepARG.tsv
awk -v OFS='\t' '{print $0, FILENAME}' *summary > CAT_summary_deepARG.tsv