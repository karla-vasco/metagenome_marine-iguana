#!/bin/bash --login

########## Define Resources Needed with SBATCH Lines ##########

#SBATCH --job-name=picrust2 # give your job a name for easier identification (same as -J)
#SBATCH --time=168:00:00        # limit of wall clock time - how long will the job take to run? (same as -t)
#SBATCH --ntasks=1            # number of tasks - how many tasks (nodes) does your job require? (same as -n)
#SBATCH --cpus-per-task=4    # number of CPUs (or cores) per task (same as -c)
#SBATCH --mem=50G             # memory required per node - amount of memory (in bytes)
#SBATCH --output=/mnt/home/vascokar/marine_iguana/eofiles/picrust2.%j.out #Standard output
#SBATCH --error=/mnt/home/vascokar/marine_iguana/eofiles/picrust2.%j.err #Standard error log

########## Diplay the job context ######
echo Job: $SLUM_JOB_NAME with ID $SLURM_JOB_ID
echo Running on host `hostname`
echo Job started at `date '+%T %a %d %b %Y'`
echo Directory is `pwd`
echo Using $SLURM_NTASKS processors across $SLURM_NNODES nodes

######### Assign path variables ########
WORK_DIRECTORY=/mnt/home/vascokar/marine_iguana/results/qiime2

########## Modules to Load ##########

module purge
module load Conda/3

########## Code to Run ###########

export PATH=$PATH:$HOME/anaconda3/bin
conda init bash
conda activate qiime2-2021.2

cd $WORK_DIRECTORY

qiime picrust2 full-pipeline \
   --i-table table-dn-97.qza \
   --i-seq rep-seqs-dn-97.qza \
   --output-dir q2-picrust2_output \
   --p-threads 4 \
   --p-hsp-method mp \
   --p-max-nsti 2 \
   --verbose

conda deactivate

##### Final time stamp ######
echo Job finished at `date '+%T %a %d %b %Y'`
