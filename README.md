# veld_chain__train_infer_wordembeddings_multiple_architectures__amc

This repo contains several chain velds relating to training and evaluating static word embedding
architectures on the [Austria Media Corpus](https://amc.acdh.oeaw.ac.at/).

Data is only persisted in private gitlab repos due to licensing and storage issues. This public
chain repo contains only pointers to public metadata repos.

Models are currently also only persisted internally while work is in progress. Once models achieve
acceptable performance, they will be published to huggingface.

## requirements

- git
- docker compose

## intergrated code and data velds

- https://github.com/veldhub/veld_code__fasttext.git : fastText code
- https://github.com/veldhub/veld_code__glove.git : GloVe code
- https://github.com/veldhub/veld_code__word2vec.git : word2vec code
- https://github.com/veldhub/veld_code__wordembeddings_evaluation.git : Evaluation code off all 
  wordbembeddings.
- https://github.com/veldhub/veld_code__wordembeddings_preprocessing.git : Preproccesing code
- https://github.com/veldhub/veld_data__amc_we_training_data.git : AMC training data, in all its
  preprocessed combinations. The public branch only contains metadata.
- https://github.com/veldhub/veld_data__fasttext_models.git : trained fastText models. Due to
  storage issues, contains only metadata. 
- https://github.com/veldhub/veld_data__glove_models.git : trained GloVe models. Due to
  storage issues, contains only metadata. 
- https://github.com/veldhub/veld_data__word2vec_models.git : trained word2vec models. Due to
  storage issues, contains only metadata. 
- https://github.com/veldhub/veld_data__wordembeddings_evaluation.git : Aggregation of evaluation
  and analysis on performance of trained models.

## how to reproduce

Several chain velds are used for training several models in varying configurations, thus there is 
no "one single overarching workflow". However the patterns are roughly:

- preprocessing
- training
- evaluation
- analysis

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

### analysis

These chains analyse the training and evaluation contexts into condensed comprehensive overviews 
and statistics:

- [./veld_analyse_evaluation.yaml](./veld_analyse_evaluation.yaml) : launches a jupyter notebook
  with various analysis and visualization steps.

- [./veld_analyse_evaluation_non_interactive.yaml](./veld_analyse_evaluation_non_interactive.yaml) 
  : executes the jupyter notebook code non-interactively, mainly for persisting statistics and
  visualizations as versioned files.

