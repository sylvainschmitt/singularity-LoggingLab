#!/bin/bash
#SBATCH --time=48:00:00
#SBATCH -J LogLab
#SBATCH -o LogLab.%N.%j.out
#SBATCH -e LogLab.%N.%j.err
#SBATCH --mem=120G
#SBATCH --cpus-per-task=30
#SBATCH --mail-type=ALL

module purge
module load system/singularity-3.7.3
singularity run -e LoggingLab.sif Rscript script.R

## Session informations
echo '########################################'
echo 'Date:' $(date --iso-8601=seconds)
echo 'User:' $USER
echo 'Host:' $HOSTNAME
echo 'Job Name:' $SLURM_JOB_NAME
echo 'Job ID:' $SLURM_JOB_ID
echo 'Number of nodes assigned to job:' $SLURM_JOB_NUM_NODES
echo 'Nodes assigned to job:' $SLURM_JOB_NODELIST
echo 'Directory:' $(pwd)
echo '########################################'
