#!/bin/bash
#PBS -N classification_bismark
#PBS -l nodes=1:ppn=10
#PBS -l walltime=1:00:00
#PBS -m abe
#PBS -M lore.depuydt@ugent.be
 
cd $PBS_O_WORKDIR
ml BEDTools/2.29.2-GCC-8.3.0
python MakeTrainTest.py
python runMeth_atlas.py