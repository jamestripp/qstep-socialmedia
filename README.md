# QSTEP Masterclass: Social Media

[James](https://www.warwick.ac.uk/jamestripp) will be delivering this all day workshop on Tuesday the 19th of March. This repository contains preparatory details and the files used in when delivering the workshop.

The workshop covers some methods for downloading, analysing and visualising social media data using the R programming language. We use the 'tidyverse' in R and (optionally) the spacy python module for natural language processing.

## Outline

The structure of the workshop is as follows

| **Stage**     | **Title**          | **Detail**                                               | **R package(s)**          |
|---------------|--------------------|----------------------------------------------------------|---------------------------|
|               | Introduction       | Overview of the day                                      |                           |
|               | [R intro](https://github.com/jamestripp/qstep-socialmedia/tree/master/1_r_intro)            | An introduction to R                                     |  [ggplot2](https://ggplot2.tidyverse.org), [tidyverse](https://www.tidyverse.org)                         |
| Collection    | [Scraping](https://github.com/jamestripp/qstep-socialmedia/tree/master/2_scraping)           | Downloading and filtering html pages                     | [rvest](https://github.com/tidyverse/rvest), [tidyverse](https://www.tidyverse.org), [magittr](https://magrittr.tidyverse.org), [ggplot2](https://ggplot2.tidyverse.org), [tibble](https://tibble.tidyverse.org)                     |
|               | [API and data dumps](https://github.com/jamestripp/qstep-socialmedia/tree/master/3_apis_datadumps) | Accessing data directly using APIs                       | [httr](https://github.com/r-lib/httr), [jsonlite](https://www.opencpu.org/posts/jsonlite-a-smarter-json-encoder/), [dplyr](https://dplyr.tidyverse.org), [textclean](https://github.com/trinker/textclean), [stringr](https://stringr.tidyverse.org), [ggplot2](https://ggplot2.tidyverse.org), [tidyverse](https://www.tidyverse.org), [magittr](https://magrittr.tidyverse.org), [tibble](https://tibble.tidyverse.org), [twitteR](https://cran.r-project.org/web/packages/twitteR/twitteR.pdf), [RedditExtractoR](https://CRAN.R-project.org/package=RedditExtractoR)  |
| Analysis      | [Summarising](https://github.com/jamestripp/qstep-socialmedia/tree/master/4_summarising)        | Tidyverse enabled summaries of our collected data        | [tidyverse](https://www.tidyverse.org), [tidytext](https://github.com/juliasilge/tidytext), [dplyr](https://dplyr.tidyverse.org), [tidyr](https://tidyr.tidyverse.org)                  |
|               | [Text analysis](https://github.com/jamestripp/qstep-socialmedia/tree/master/5_text_analysis)      | Applying numerical analysis to our text                  | [tidytext](https://cran.r-project.org/web/packages/tidytext/vignettes/tidytext.html), [tidyverse](https://www.tidyverse.org), [dplyr](https://dplyr.tidyverse.org), [stringr](https://stringr.tidyverse.org), [RedditExtractoR](https://CRAN.R-project.org/package=RedditExtractoR), [tidyr](https://tidyr.tidyverse.org), [igraph](https://igraph.org/r/), [ggraph](https://github.com/thomasp85/ggraph), [wordcloud](https://cran.r-project.org/web/packages/wordcloud/index.html), [reshape2](https://github.com/hadley/reshape), [tm](http://tm.r-forge.r-project.org), [topicmodels](https://cran.r-project.org/web/packages/topicmodels/index.html) |
|               | Natural Language   | Optional section using the cleanNLP package              | cleanNLP                  |

## Preparation

The preparation for the workshop is detailed [here](preparation/). Please follow the instructions and install the required software before or during the workshop.

In R, please run the following code to install all the above R package.

```r
our_packages <- c('tidyverse', 
                  'ggplot2', 
                  'rvest', 
                  'jsonlite', 
                  'httr', 
                  'dplyr', 
                  'textclean', 
                  'stringr', 
                  'magittr', 
                  'tibble', 
                  'twitteR', 
                  'RedditExtractoR', 
                  'tidytext', 
                  'tidyr', 
                  'igraph', 
                  'ggraph', 
                  'wordcloud', 
                  'reshape2', 
                  'tm', 
                  'topicmodels')

install.packages(our_packages)
```

## Post-workshop

For further information, please see the below links:

- [R for Data Analysis](https://r4ds.had.co.nz/index.html). An excellent freely available book showing how one can use R for Data Science. The code uses the TidyVerse.
- [Text Mining with R](https://www.tidytextmining.com). Another text which uses the tidyverse set of R packages.
- [Tidy Data](https://www.jstatsoft.org/article/view/v059i10/v59i10.pdf). Journal article from 2014 detailing the idea behind 'tidy data'. Useful for understanding how the tidyverse is organised.
- [cleanNLP](https://arxiv.org/pdf/1703.09570). A 2017 journal article introducing the cleanNLP package which allows one to carry out natural language processing using pretrained machine learning models with output consistent with the principles of the tidyverse. This article explains well the rationale of the package and approach.

In the individual sections, additional links are provided. These are collected together below for your convenience.

### R Intro

* [R for data science](https://r4ds.had.co.nz) - An excellent book introducing the tidyverse approach to data science. 
* [Tidyverse](https://www.tidyverse.org) - Web page detailing the tidyverse collection of package and how to use them.
* [RStudio Cheat sheets](https://www.rstudio.com/resources/cheatsheets/) - A whole collection of cheatsheets. The ggplot and dplyr sheets are perhaps most useful given the above.
* [RStudio essentials](https://resources.rstudio.com) - Videos available on the RStudio page.
* [Rstudio Essentials of Data Science](https://resources.rstudio.com/the-essentials-of-data-science) - Nice collection of videos on various data science topics in R.
* [Datacamp tidyverse for beginners](https://www.datacamp.com/community/blog/tidyverse-cheat-sheet-beginners) - A somewhat simpler cheat sheet which is great for those coming to the tidyverse for the first time.

### Scraping

We have looked at how one can save and filter an HTML page in R. In the web page we filtered the HTML based on the classes of divs. The following might be of interest:

* [W3Schools intro to HTML](https://www.w3schools.com/html/default.asp)
* [W3Schools page about HTML div tags](https://www.w3schools.com/tags/tag_div.asp)
* [W3Schools on HTML classes](https://www.w3schools.com/html/html_classes.asp)

Rvest is a little limited for social media data, but is very useful for downloading strutured data like tables from web pages. For examples of this, see:

* [Wikipedia table scraping](http://blog.corynissen.com/2015/01/using-rvest-to-scrape-html-table.html) - Old but clear tutorial on scraping a wikipedia table
* [DataCamp community tutorial](https://www.datacamp.com/community/tutorials/r-web-scraping-rvest) - a more advanced tutorial on using rvest to scrape data from the Trustpilot page and carry out an interesting analysis.
* [R view](https://resources.rstudio.com/r-views-3/player-data-for-the-2018-fifa-world-cup) - another wikipedia scraping example with rvest

If you want to scrape page with infinite scrolling (such as twitter) from within the browser, then the dataminer extension for Google chrome is useful, along with the autoscroll extension. Below are several useful resources for this extension.

* [DataMiner help page](https://data-miner.io/user-manuals/public-recipes)
* [VisiHow tutorial](https://visihow.com/Use_Data_Miner_in_Google_Chrome)

**Note** You will need to have a google account to use this service. Be aware this may result in DataMiner being aware your activities.

### API and Data Dumps

* [httr vignette about API access](https://cran.r-project.org/web/packages/httr/vignettes/api-packages.html)
* [RStudio Conference 2017 talk on accessing web APIs](https://www.rstudio.com/resources/videos/using-web-apis-from-r/)

### Summarising

* [The tidytext section](https://www.tidytextmining.com/tidytext.html) of the useful 'Text mining with R' book
* [A gentle guide to Tidy Statistics in R](https://towardsdatascience.com/a-gentle-guide-to-statistics-in-r-ccb91cc1177e) by Thomas Mock - A nice overview of the tidyverse
* [The tidy tools manifesto](https://tidyverse.tidyverse.org/articles/manifesto.html) - Hadley Wickham taking a manifesto approach
* [Pipe section](https://r4ds.had.co.nz/pipes.html) of the R for data science book - in case the pipe requires additional clarification
* [Data Carpentry lesson: R for social scientists](https://datacarpentry.org/r-socialsci/) - an R workshop specifically for social scientists which you may find quite approachable

The best way to understand these tools is to use them, play with them, break them and produce something. A quick online search reveals [some r data sets for free](http://www.rdatamining.com/resources/data). Loading some of these datasets looks a little tricky. 

You can always try [FiveThirtyEight data sets](https://data.fivethirtyeight.com) - a news organisation which has released all their data in the [fivethirtyeight R package](https://cran.r-project.org/web/packages/fivethirtyeight/index.html)

### Text Analysis

