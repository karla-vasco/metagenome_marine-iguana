#!/bin/bash --login

#Downloading HUMANN 3
#https://github.com/biobakery/humann#initial-installation

#Make a folder where you will download humann3
mkdir ~/humann
cd ~/humann

#Download the latest version of humann
wget https://files.pythonhosted.org/packages/27/f9/d07bd76dd7dd5732c4d29d58849e96e4828c8a7dc95cf7ae58622f37591a/humann-3.0.1.tar.gz

#unpack humann3
tar -xf humann-3.0.1.tar.gz

#INSTALL WITH CONDA https://huttenhower.sph.harvard.edu/humann/

######### Modules to Load ##########
module purge
module load Conda/3

########## Code to Run ###########
conda create --name biobakery3 python=3.7
conda activate biobakery3
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
conda config --add channels biobakery
conda install bowtie2
conda install -c bioconda diamond=0.9.36
conda install humann -c biobakery

conda deactivate

#nohup sh 0-install_humann3.sh > install.log &