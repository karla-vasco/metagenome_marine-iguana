#!/bin/bash --login  
INPUT_DIRECTORY=/mnt/home/vascokar/marine_iguana/results/assemblies
LIST_DIRECTORY=/mnt/scratch/vascokar/marine_iguana/ACC_deeparg/lists
OUTPUT_DIRECTORY=/mnt/scratch/vascokar/marine_iguana/ACC_deeparg/fasta

module load  GCC/9.3.0
module load seqtk/1.3

cd $INPUT_DIRECTORY

for dir in */; # for each sample dir
do
  n=${dir%%/} # strip the directory name

seqtk subseq $INPUT_DIRECTORY/${n}/contigs.fasta $LIST_DIRECTORY/contigs_betalactam_${n}.lst > $OUTPUT_DIRECTORY/betalactam_contigs_${n}.fasta
seqtk subseq $INPUT_DIRECTORY/${n}/contigs.fasta $LIST_DIRECTORY/contigs_glycopeptide_${n}.lst > $OUTPUT_DIRECTORY/glycopeptide_contigs_${n}.fasta
seqtk subseq $INPUT_DIRECTORY/${n}/contigs.fasta $LIST_DIRECTORY/contigs_multidrug_${n}.lst > $OUTPUT_DIRECTORY/multidrug_contigs_${n}.fasta
seqtk subseq $INPUT_DIRECTORY/${n}/contigs.fasta $LIST_DIRECTORY/contigs_bacitracin_${n}.lst > $OUTPUT_DIRECTORY/bacitracin_contigs_${n}.fasta
seqtk subseq $INPUT_DIRECTORY/${n}/contigs.fasta $LIST_DIRECTORY/contigs_tetracycline_${n}.lst > $OUTPUT_DIRECTORY/tetracycline_contigs_${n}.fasta
seqtk subseq $INPUT_DIRECTORY/${n}/contigs.fasta $LIST_DIRECTORY/contigs_MLS_${n}.lst > $OUTPUT_DIRECTORY/MLS_contigs_${n}.fasta
seqtk subseq $INPUT_DIRECTORY/${n}/contigs.fasta $LIST_DIRECTORY/contigs_aminoglycoside_${n}.lst > $OUTPUT_DIRECTORY/aminoglycoside_contigs_${n}.fasta
seqtk subseq $INPUT_DIRECTORY/${n}/contigs.fasta $LIST_DIRECTORY/contigs_phenicol_${n}.lst > $OUTPUT_DIRECTORY/phenicol_contigs_${n}.fasta
seqtk subseq $INPUT_DIRECTORY/${n}/contigs.fasta $LIST_DIRECTORY/contigs_sulfonamide_${n}.lst > $OUTPUT_DIRECTORY/sulfonamide_contigs_${n}.fasta
seqtk subseq $INPUT_DIRECTORY/${n}/contigs.fasta $LIST_DIRECTORY/contigs_fluoroquinolone_${n}.lst > $OUTPUT_DIRECTORY/fluoroquinolone_contigs_${n}.fasta
seqtk subseq $INPUT_DIRECTORY/${n}/contigs.fasta $LIST_DIRECTORY/contigs_fosfomycin_${n}.lst > $OUTPUT_DIRECTORY/fosfomycin_contigs_${n}.fasta

cd $OUTPUT_DIRECTORY
find . -size 0 -delete

done