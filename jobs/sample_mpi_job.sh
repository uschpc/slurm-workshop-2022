#!/bin/bash
#SBATCH --nodes 3
#SBATCH --ntasks 9
#SBATCH --partition main
#SBATCH --time=00:05:00
#SBATCH --mem-per-cpu=512MB
#SBATCH --chdir /home1/ttrojan/slurm-workshop-2022
#SBATCH --account=<account_id>

module purge
module load gcc/8.3.0
module load openmpi/4.0.2
module load pmix/3.1.3

srun --mpi=pmix_v2 --ntasks $SLURM_NTASKS data/mpi_sample/mpi_hello_world
