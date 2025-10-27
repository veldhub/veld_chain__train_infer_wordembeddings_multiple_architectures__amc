#!/bin/bash

#SBATCH --partition=m
#SBATCH --cpus-per-task=88
#SBATCH --mem-per-cpu=10GB
#SBATCH --time=48:00:00
#SBATCH --qos=medium
#SBATCH --output=veld_train_word2vec.log

ntfy "veld_train_word2vec.sbatch: started with job id: ${SLURM_JOB_ID}"

apptainer-compose -f veld_train_word2vec.yaml up

ntfy "veld_train_word2vec.sbatch: finished with job id: ${SLURM_JOB_ID}"

