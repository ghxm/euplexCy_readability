spacy_readability for euplex
 ==================
 
  spaCy v2.0 pipeline component for calculating readability scores of of
 text. Provides scores for Flesh-Kincaid grade level, Flesh-Kincaid
 reading ease, Dale-Chall, and SMOG, Lix and word entropy.
 
  Installation
 ------------
 
  ``` {.sourceCode .python}
 pip install git+git://github.com/ghxm/spacy_euplex_readability.git#egg=spacy_euplex_readability
 ```
 
  Usage
 -----
 
  ``` {.sourceCode .python}
 import spacy
 from spacy_readability import Readability
 
 nlp = spacy.load('en')
 nlp.add_pipe(Readability())
 
 doc = nlp("I am some really difficult text to read because I use obnoxiously large words.")
 
 print(doc._.flesch_kincaid_grade_level)
 print(doc._.flesch_kincaid_reading_ease)
 print(doc._.dale_chall)
 print(doc._.smog)
 print(doc._.coleman_liau_index)
 print(doc._.automated_readability_index)
 print(doc._.forcast)
 print(doc._.word_entropy)
 print(doc._.lix)
 ```
 
  ### Readability Scores
 
  Readability is the ease with which a reader can understand a written
 text. In natural language, the readability of text depends on its
 content (the complexity of its vocabulary and syntax) and its
 presentation (such as typographic aspects like font size, line height,
 and line length).
 
  #### Popular Metrics
 
  -   The Flesch formulas
     :   -   Flesch-Kincaid Readability Score
         -   Flesch-Kincaid Reading Ease
 
  -   Dale-Chall formula
 -   SMOG
 -   Coleman-Liau Index
 -   Automated Readability Index
 -   FORCAST
 -   Word entropy
 -   Lix score
 
  [For more in depth reading.](https://en.wikipedia.org/wiki/Readability)

Contributing
============

#### Setup
1. Install [Poetry](https://poetry.eustace.io/)
1. Run `make setup` to prepare workspace

#### Testing
1. Run `make test` to run all tests

#### Linting
1. Run `make format` to run black code formatter
1. Run `make lint` to run pylint
1. Run `make mypy` to run mypy
