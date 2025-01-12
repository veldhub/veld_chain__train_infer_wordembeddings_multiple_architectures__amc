# veld_chain__train_infer_wordembeddings_multiple_architectures__amc

This repo contains several chain velds relating to training and evaluationg static word embedding
architectures on the [Austria Media Corpus](https://amc.acdh.oeaw.ac.at/).

Data is only persisted in private gitlab repos due to licensing and storage issues. This public
chain repo contains only pointers to public metadata repos.

## requirements

- git
- docker compose

## how to reproduce

Several chains are used for training several models in varying configurations, thus there is no 
"one single overarching workflo", however the patterns are roughly:

- preprocessing
- training
- evaluation

Each chain veld yaml represents one persisted workflow at one point in time. See inside these
following yaml files for more details.

### preprocessing

The entire AMC data is preprocessed in combinations of these preprocessing chains:

- [./veld_preprocess_clean.yaml](./veld_preprocess_clean.yaml) : Removes lines that don't reach a 
  threshold regarding the ratio of textual content to non-textual (numbers, special characters) 
  content.

- [./veld_preprocess_lowercase.yaml](./veld_preprocess_lowercase.yaml) : Makes entire text 
  lowercase.

- [./veld_preprocess_remove_punctuation.yaml](./veld_preprocess_remove_punctuation.yaml) : Removes 
  punctuation from text with spaCy pretrained models.

- [./veld_preprocess_sample.yaml](./veld_preprocess_sample.yaml) : Takes a random sample of lines 
  from a txt file. Randomness can be set with a seed too.

- [./veld_preprocess_strip.yaml](./veld_preprocess_strip.yaml) : Removes all lines before and after 
  given line numbers.

### training

The following chains encapsulate training workflows:

- [./veld_train_fasttext.yaml](./veld_train_fasttext.yaml) : A fasttext training setup.

- [./veld_train_glove.yaml](./veld_train_glove.yaml) : A GloVe training setup.

- [./veld_train_word2vec.yaml](./veld_train_word2vec.yaml) : A word2vec training setup.

### evaluation

The following chains encapsulate evaluation workflows:

- [./veld_eval_fasttext.yaml](./veld_eval_fasttext.yaml) : custom evaluation logic on fasttext word 
  embeddings.

- [./veld_eval_glove.yaml](./veld_eval_glove.yaml) : custom evaluation logic on GloVe word 
  embeddings.
 
- [./veld_eval_word2vec.yaml](./veld_eval_word2vec.yaml) : custom evaluation logic on word2vec word 
  embeddings.

### analyse

These chains analyse the training and evaluation contexts into condensed comprehensive overviews 
and statistics:

- [./veld_analyse_evaluation.yaml](./veld_analyse_evaluation.yaml) : launches a jupyter notebook
  with various analysis and visualization steps.

- [./veld_analyse_evaluation_non_interactive.yaml](./veld_analyse_evaluation_non_interactive.yaml) 
  : executes the jupyter notebook code non-interactively, mainly for persisting statistics and
  visualizations as versioned files.

