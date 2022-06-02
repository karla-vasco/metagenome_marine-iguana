#!/bin/bash --login

KRONA_TOOLS_DIR=/mnt/home/vascokar/kraken2/KrakenTools-master/DiversityTools
INPUT_DIRECTORY=/mnt/scratch/vascokar/marine_iguana/shotgun/bracken
OUTPUT_DIRECTORY=/mnt/scratch/vascokar/marine_iguana/shotgun/diversity_bracken

########## Code to Run ###########
cd $INPUT_DIRECTORY
for f in *.bracken_species.txt # for each sample f
do
  n=${f%%.bracken_species.txt} # strip part of file name

python $KRONA_TOOLS_DIR/alpha_diversity.py \
--filename $INPUT_DIRECTORY/${n}.bracken_species.txt \
--alpha Sh > $OUTPUT_DIRECTORY/${n}_shannon_bracken_species.txt

cd $INPUT_DIRECTORY
python $KRONA_TOOLS_DIR/beta_diversity.py \
-i R04_S32_L008.bracken_species.txt R03_S27_L008.bracken_species.txt CD6_S38_L008.bracken_species.txt PE49_S31_L008.bracken_species.txt CD11_S3_L008.bracken_species.txt R08_S13_L008.bracken_species.txt PE57_S6_L008.bracken_species.txt R05_S37_L008.bracken_species.txt PE48_S26_L008.bracken_species.txt CD44_S4_L008.bracken_species.txt CD27_S29_L008.bracken_species.txt PE52_S36_L008.bracken_species.txt CD38_S39_L008.bracken_species.txt CD21_S24_L008.bracken_species.txt PE23_S40_L008.bracken_species.txt CD34_S34_L008.bracken_species.txt R06_S42_L008.bracken_species.txt PE60_S12_L008.bracken_species.txt R01_S17_L008.bracken_species.txt CD15_S1_L008.bracken_species.txt CD49_S10_L008.bracken_species.txt R07_S7_L008.bracken_species.txt R02_S22_L008.bracken_species.txt CD4_S33_L008.bracken_species.txt PE54_S41_L008.bracken_species.txt CD18_S19_L008.bracken_species.txt CD13_S9_L008.bracken_species.txt PE04_S35_L008.bracken_species.txt PE37_S21_L008.bracken_species.txt PE32_S11_L008.bracken_species.txt PE25_S5_L008.bracken_species.txt PE36_S16_L008.bracken_species.txt \
--type bracken > $OUTPUT_DIRECTORY/bray-curtis_bracken_species.txt

done