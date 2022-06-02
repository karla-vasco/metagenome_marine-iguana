#!/bin/bash --login

######### Assign path variables ########
DATABASES_DIRECTORY=~/humann

######### Modules to Load ##########
module purge
module load Conda/3

########## Code to Run ###########
export PATH=$PATH:$HOME/anaconda3/bin
conda init bash
conda activate biobakery3

#The HUMAnN installation comes with small sequence and annotation databases for testing/tutorial purposes.
#To upgrade your pangenome database:
humann_databases --download chocophlan full $DATABASES_DIRECTORY --update-config yes
#To upgrade your protein database:
humann_databases --download uniref uniref90_diamond $DATABASES_DIRECTORY --update-config yes
#To upgrade your annotations database:
humann_databases --download utility_mapping full $DATABASES_DIRECTORY --update-config yes

conda deactivate

#nohup sh 2-upgrading_databases.sh > databases.log &