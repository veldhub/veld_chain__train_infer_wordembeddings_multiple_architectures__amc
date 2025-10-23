#!/bin/bash

#SBATCH --partition=m
#SBATCH --cpus-per-task=88
#SBATCH --mem-per-cpu=2GB
#SBATCH --time=96:00:00
#SBATCH --qos=long
#SBATCH --output=veld_preprocess_remove_punctuation.log

ntfy "veld_preprocess_remove_punctuation.sbatch: started with job id: ${SLURM_JOB_ID}"

apptainer-compose -f veld_preprocess_remove_punctuation.yaml up

ntfy "veld_preprocess_remove_punctuation.sbatch: finished with job id: ${SLURM_JOB_ID}"

