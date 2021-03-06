#!/usr/bin/bash
#SBATCH --ntasks=2
#SBATCH --ntasks-per-node=2
#SBATCH --cpus-per-task=1
#SBATCH -A scw1019
#SBATCH -t 240
#SBATCH -J HRTSSED_I # HiRep Test Suite
#SBATCH -o outSED_I.txt
#SBATCH -e errSED_I.txt
  
module load  compiler/gnu/7/3.0
module load  mpi/openmpi/3.1.4

