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
echo "making list of files"
ls data/raw-seq/ > unnumbered-filenames.txt
echo "preparing the input"
line=$(sed -n -e "$SLURM_ARRAY_TASK_ID p" unnumbered-filenames.txt)
echo "running FastQC"
fastqc -o results/fastqc-rawseq-unordered data/raw-seq/${line}
echo "Example FastQC end"
