#!/bin/bash
#SBATCH --nodes 1
#SBATCH --ntasks 1
#SBATCH --partition debug
#SBATCH --time=00:05:00
#SBATCH --chdir /home1/ttrojan/slurm-workshop-2022
#SBATCH --account=<account_id>
module purge
module load gcc/9.2.0
module load fastqc
echo "Example FastQC start"
sleep 20
fastqc -o results/fastqc-rawseq-ordered data/raw-seq-ordered/yeast_1_50K.fastq
fastqc -o results/fastqc-rawseq-ordered data/raw-seq-ordered/yeast_2_50K.fastq
fastqc -o results/fastqc-rawseq-ordered data/raw-seq-ordered/yeast_3_50K.fastq
fastqc -o results/fastqc-rawseq-ordered data/raw-seq-ordered/yeast_4_50K.fastq
fastqc -o results/fastqc-rawseq-ordered data/raw-seq-ordered/yeast_5_50K.fastq
fastqc -o results/fastqc-rawseq-ordered data/raw-seq-ordered/yeast_6_50K.fastq
echo "Example FastQC end"
