#!/bin/bash --login  
INPUT_DIRECTORY=/mnt/home/vascokar/marine_iguana/results/deeparg_contigs
OUTPUT_DIRECTORY=/mnt/scratch/vascokar/marine_iguana/ACC_deeparg/lists

cd $INPUT_DIRECTORY
for f in *_contigs_deeparg.mapping.ARG # for each sample f
do
  n=${f%%_contigs_deeparg.mapping.ARG} # strip part of file name

awk '/beta-lactam/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.ARG > $OUTPUT_DIRECTORY/betalactam_contigs_ARG_${n}.lst
awk '/glycopeptide/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.ARG > $OUTPUT_DIRECTORY/glycopeptide_contigs_ARG_${n}.lst
awk '/multidrug/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.ARG > $OUTPUT_DIRECTORY/multidrug_contigs_ARG_${n}.lst
awk '/bacitracin/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.ARG > $OUTPUT_DIRECTORY/bacitracin_contigs_ARG_${n}.lst
awk '/tetracycline/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.ARG > $OUTPUT_DIRECTORY/tetracycline_contigs_ARG_${n}.lst
awk '/MLS/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.ARG > $OUTPUT_DIRECTORY/MLS_contigs_ARG_${n}.lst
awk '/aminoglycoside/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.ARG > $OUTPUT_DIRECTORY/aminoglycoside_contigs_ARG_${n}.lst
awk '/phenicol/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.ARG > $OUTPUT_DIRECTORY/phenicol_contigs_ARG_${n}.lst
awk '/sulfonamide/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.ARG > $OUTPUT_DIRECTORY/sulfonamide_contigs_ARG_${n}.lst
awk '/fluoroquinolone/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.ARG > $OUTPUT_DIRECTORY/fluoroquinolone_contigs_ARG_${n}.lst
awk '/fosfomycin/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.ARG > $OUTPUT_DIRECTORY/fosfomycin_contigs_ARG_${n}.lst

awk '/beta-lactam/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.potential.ARG > $OUTPUT_DIRECTORY/betalactam_contigs_pot_${n}.lst
awk '/glycopeptide/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.potential.ARG > $OUTPUT_DIRECTORY/glycopeptide_contigs_pot_${n}.lst
awk '/multidrug/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.potential.ARG > $OUTPUT_DIRECTORY/multidrug_contigs_pot_${n}.lst
awk '/bacitracin/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.potential.ARG > $OUTPUT_DIRECTORY/bacitracin_contigs_pot_${n}.lst
awk '/tetracycline/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.potential.ARG > $OUTPUT_DIRECTORY/tetracycline_contigs_pot_${n}.lst
awk '/MLS/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.potential.ARG > $OUTPUT_DIRECTORY/MLS_contigs_pot_${n}.lst
awk '/aminoglycoside/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.potential.ARG > $OUTPUT_DIRECTORY/aminoglycoside_contigs_pot_${n}.lst
awk '/phenicol/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.potential.ARG > $OUTPUT_DIRECTORY/phenicol_contigs_pot_${n}.lst
awk '/sulfonamide/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.potential.ARG > $OUTPUT_DIRECTORY/sulfonamide_contigs_pot_${n}.lst
awk '/fluoroquinolone/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.potential.ARG > $OUTPUT_DIRECTORY/fluoroquinolone_contigs_pot_${n}.lst
awk '/fosfomycin/{print $4}' $INPUT_DIRECTORY/${n}_contigs_deeparg.mapping.potential.ARG > $OUTPUT_DIRECTORY/fosfomycin_contigs_pot_${n}.lst

cd $OUTPUT_DIRECTORY
cat betalactam_contigs_ARG_${n}.lst betalactam_contigs_pot_${n}.lst > contigs_betalactam_${n}_dup.lst
cat glycopeptide_contigs_ARG_${n}.lst glycopeptide_contigs_pot_${n}.lst > contigs_glycopeptide_${n}_dup.lst
cat multidrug_contigs_ARG_${n}.lst multidrug_contigs_pot_${n}.lst > contigs_multidrug_${n}_dup.lst
cat bacitracin_contigs_ARG_${n}.lst bacitracin_contigs_pot_${n}.lst > contigs_bacitracin_${n}_dup.lst
cat tetracycline_contigs_ARG_${n}.lst tetracycline_contigs_pot_${n}.lst > contigs_tetracycline_${n}_dup.lst
cat MLS_contigs_ARG_${n}.lst MLS_contigs_pot_${n}.lst > contigs_MLS_${n}_dup.lst
cat aminoglycoside_contigs_ARG_${n}.lst aminoglycoside_contigs_pot_${n}.lst > contigs_aminoglycoside_${n}_dup.lst
cat phenicol_contigs_ARG_${n}.lst phenicol_contigs_pot_${n}.lst > contigs_phenicol_${n}_dup.lst
cat sulfonamide_contigs_ARG_${n}.lst sulfonamide_contigs_pot_${n}.lst > contigs_sulfonamide_${n}_dup.lst
cat fluoroquinolone_contigs_ARG_${n}.lst fluoroquinolone_contigs_pot_${n}.lst > contigs_fluoroquinolone_${n}_dup.lst
cat fosfomycin_contigs_ARG_${n}.lst fosfomycin_contigs_pot_${n}.lst > contigs_fosfomycin_${n}_dup.lst

cd $OUTPUT_DIRECTORY
find . -size 0 -delete

done