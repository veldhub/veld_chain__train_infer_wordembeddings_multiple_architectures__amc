#!/bin/bash

#SBATCH --partition=m
#SBATCH --cpus-per-task=88
#SBATCH --mem-per-cpu=2GB
#SBATCH --time=96:00:00
#SBATCH --qos=long
#SBATCH --output=veld_preprocess_lemmatize.log

ntfy "veld_preprocess_lemmatize.sbatch: started with job id: ${SLURM_JOB_ID}"

apptainer-compose -f veld_preprocess_lemmatize.yaml up

ntfy "veld_preprocess_lemmatize.sbatch: finished with job id: ${SLURM_JOB_ID}"

