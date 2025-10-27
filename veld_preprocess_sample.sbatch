#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=32GB
#SBATCH --time=08:00:00
#SBATCH --output=/users/stefan.resch/veld/veld_chain__train_infer_wordembeddings_multiple_architectures__amc/veld_preprocess_sample.log

title="veld_preprocess_sample"

ntfy "${title}: start"

apptainer-compose -f veld_preprocess_sample.yaml up

ntfy "${title}: end"

