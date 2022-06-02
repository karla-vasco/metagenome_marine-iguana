#!/bin/bash --login  
cd /mnt/scratch/vascokar/marine_iguana/ACC_deeparg/lists
for f in *.lst # for each sample f
do
  n=${f%%.lst} # strip part of file name

sort ${n}_dup.lst | uniq > ${n}.lst

done