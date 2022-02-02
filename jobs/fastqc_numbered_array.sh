#!/bin/bash
#SBATCH --nodes 1
#SBATCH --ntasks 1
#SBATCH --partition main
#SBATCH --time=00:05:00
#SBATCH --array=1-6
#SBATCH --chdir /home1/ttrojan/slurm-workshop-2022
#SBATCH --account=<account_id>
module purge
module load gcc/9.2.0
module load fastqc
sleep 20
echo "Example FastQC start"
fastqc -o results/fastqc-rawseq-ordered-arr data/raw-seq-ordered/yeast_${SLURM_ARRAY_TASK_ID}_50K.fastq
echo "Example FastQC end"
