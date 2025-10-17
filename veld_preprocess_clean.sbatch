#!/bin/bash

#SBATCH --partition=m
#SBATCH --cpus-per-task=32
#SBATCH --mem-per-cpu=2GB
#SBATCH --time=24:00:00
#SBATCH --qos=medium
#SBATCH --output=veld_preprocess_clean.log

ntfy "veld_preprocess_clean.sbatch: started with job id: ${SLURM_JOB_ID}"

apptainer-compose -f veld_preprocess_clean.yaml up

ntfy "veld_preprocess_clean.sbatch: finished with job id: ${SLURM_JOB_ID}"

