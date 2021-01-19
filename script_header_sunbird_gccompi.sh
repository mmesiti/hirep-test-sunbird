#!/usr/bin/bash
#SBATCH -n 2
#SBATCH --oversubscribe
#SBATCH -A scw1019
#SBATCH -t 120 
#SBATCH -J HRTS # HiRep Test Suite
#SBATCH -o outSED_I.txt
#SBATCH -e errSED_I.txt
  
module load  compiler/gnu/7/3.0
module load  mpi/openmpi/3.1.4

