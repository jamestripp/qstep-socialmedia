# QSTEP Masterclass: Social Media

[James](https://www.warwick.ac.uk/jamestripp) will be delivering this all day workshop on Tuesday the 19th of March. This repository contains preparatory details and the files used in when delivering the workshop.

The workshop covers some methods for downloading, analysing and visualising social media data using the R programming language. We use the 'tidyverse' in R and (optionally) the spacy python module for natural language processing.

## Outline

The structure of the workshop is as follows

| **Stage**     | **Title**          | **Detail**                                               | **R package(s)**          |
|---------------|--------------------|----------------------------------------------------------|---------------------------|
|               | Introduction       | Overview of the day                                      |                           |
|               | [R intro](https://github.com/jamestripp/qstep-socialmedia/tree/master/1_r_intro)            | An introduction to R                                     |                           |
| Collection    | Scraping           | Downloading and filtering html pages                     | rvest                     |
|               | API and data dumps | Accessing data directly using APIs                       | twitteR, RedditExtractoR  |
| Analysis      | Summarising        | Tidyverse enabled summaries of our collected data        | tidyverse                 |
|               | Text analysis      | Applying numerical analysis to our text                  | tidytext                  |
|               | Natural Language   | Optional section using the cleanNLP package              | cleanNLP                  |

## Preparation

The preparation for the workshop is detailed [here](preparation/). Please follow the instructions and install the required software before or during the workshop.

## Post-workshop

For further information, please see the below links:

- [R for Data Analysis](https://r4ds.had.co.nz/index.html). An excellent freely available book showing how one can use R for Data Science. The code uses the TidyVerse.
- [Text Mining with R](https://www.tidytextmining.com). Another text which uses the tidyverse set of R packages.
- [Tidy Data](https://www.jstatsoft.org/article/view/v059i10/v59i10.pdf). Journal article from 2014 detailing the idea behind 'tidy data'. Useful for understanding how the tidyverse is organised.
- [cleanNLP](https://arxiv.org/pdf/1703.09570). A 2017 journal article introducing the cleanNLP package which allows one to carry out natural language processing using pretrained machine learning models with output consistent with the principles of the tidyverse. This article explains well the rationale of the package and approach.