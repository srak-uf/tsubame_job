#!/bin/bash
#$ -cwd
#$ -l cpu_40=1
#$ -l h_rt=0:10:0
#$ -V 

module load lammps/2aug2023_u3

export OMP_NUM_THREADS=1
mpirun -np 40 lmp -i LLZO.in

