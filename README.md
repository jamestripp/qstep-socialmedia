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
|               | Natural Language   | Optional section using the cleanNLP package              | [cleanNLP](https://statsmaths.github.io/cleanNLP/), [tibble](https://tibble.tidyverse.org), [tidyverse](https://www.tidyverse.org), [RedditExtractoR](https://CRAN.R-project.org/package=RedditExtractoR), [reticulate](https://rstudio.github.io/reticulate/)                  |

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
                  'topicmodels',
                  'cleanNLP',
                  'reticulate')

install.packages(our_packages)
```

If you recieve a message about requiring code to be compiled then type in no and press enter.

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

If you want to go further with these techniques then the following might be useful:

* [httr vignette about API access](https://cran.r-project.org/web/packages/httr/vignettes/api-packages.html)
* [RStudio Conference 2017 talk on accessing web APIs](https://www.rstudio.com/resources/videos/using-web-apis-from-r/)
* [Rstudio video on accessing web APIs](https://www.rstudio.com/resources/videos/using-web-apis-from-r/)
* The [rTweet](https://rtweet.info) package looks like a better way to access Twitter via R. However, I have not tried it before this workshop.

There are lots of different packages for collecting social media data. The [vosonSML](https://github.com/vosonlab/vosonSML) package is a front end to the [rtweet](https://github.com/mkearney/rtweet) and [RedditExtractoR](https://github.com/ivan-rivera/RedditExtractoR) packages. It appears to have some excellent network analysis component and is most certainly worth you looking into.

In addition:

* [DMI-TCAT](https://github.com/digitalmethodsinitiative/dmi-tcat/wiki) - A software package (not in R) which allows one to download and archive data Twitter data. The data can then be analysed using a web interface. We have several TCAT servers set up at CIM.
* [NetVizz](https://tools.digitalmethods.net/netvizz/facebook/netvizz/) - A Facebook APP for downloading data.
* [YouTube Data Tools](https://tools.digitalmethods.net/netvizz/youtube/) - A free app for downloading YouTube data. You can download the data and then load it into R using the command read.csv(filename, sep = '\t'). Where filename is the filename of your downloaded file.

### Summarising

* [The tidytext section](https://www.tidytextmining.com/tidytext.html) of the useful 'Text mining with R' book
* [A gentle guide to Tidy Statistics in R](https://towardsdatascience.com/a-gentle-guide-to-statistics-in-r-ccb91cc1177e) by Thomas Mock - A nice overview of the tidyverse
* [The tidy tools manifesto](https://tidyverse.tidyverse.org/articles/manifesto.html) - Hadley Wickham taking a manifesto approach
* [Pipe section](https://r4ds.had.co.nz/pipes.html) of the R for data science book - in case the pipe requires additional clarification
* [Data Carpentry lesson: R for social scientists](https://datacarpentry.org/r-socialsci/) - an R workshop specifically for social scientists which you may find quite approachable

The best way to understand these tools is to use them, play with them, break them and produce something. A quick online search reveals [some r data sets for free](http://www.rdatamining.com/resources/data). Loading some of these datasets looks a little tricky. 

You can always try [FiveThirtyEight data sets](https://data.fivethirtyeight.com) - a news organisation which has released all their data in the [fivethirtyeight R package](https://cran.r-project.org/web/packages/fivethirtyeight/index.html)

### Text Analysis

The Text Mining with R book chose the analysis we use in this session to demonstrate their package. These methods are still used. A nice recent review of the different packages and methods is [Text Analysis in R](https://kenbenoit.net/pdfs/text_analysis_in_R.pdf). There are online paid course (for example [DataCamp](https://www.datacamp.com/tracks/text-mining-with-r)) but I have not taken these and you can learn a lot using free resources.

Machine learning is becoming a popular technique. Models which have been pretrained on large collections of text are used to categorise text. In the next segment, we will dip our toes into this approach. An excellent text is [Deep learning with R](https://www.amazon.co.uk/Deep-Learning-R_p1-Joseph-Allaire/dp/161729554X). I heartily recomend reading through that book if you are interested in machine learning.

I have listed a few more resources below. These can be tricky and you are best going with the book and paper mentioned above.

* [Computer science paper reviewing sentiment analysis so far](https://arxiv.org/pdf/1612.01556.pdf)
* [Medium post on sentiment analysis and machine learning](https://medium.com/datadriveninvestor/sentiment-analysis-machine-learning-approach-83e4ba38b57) - Hard to read but a nice quick review
* [Machine learning analysis with R](https://www.kaggle.com/taindow/deep-learning-with-r-sentiment-analysis).

### Natural Language Processing

Natual language processing is an interesting area. There are lots of packages (e.g., see the [CRAN natural langauge processing view](https://cran.r-project.org/web/views/NaturalLanguageProcessing.html)) and cleanNLP seems to be the best for easily integrating with the tidyverse. You may find the below links to be useful.

* [Stanford CoreNLP](http://www.aclweb.org/anthology/P14-5010) - An excellent and classic library for natual language processing.
* [Spacy homepage](https://spacy.io) - The python package we used above. If you applying the above in your own projects then please work through this page to usderstand some of the nuances of the program.
* [CleanNLP article](https://arxiv.org/pdf/1703.09570.pdf) - The paper contains some analysis which we did not do above. Furthermore, the references in the paper are useful for better understanding the approach.
* [Detecting politeness](https://journal.r-project.org/archive/2018/RJ-2018-067/RJ-2018-067.pdf) - Natual language processing has the potential of identifying more nuanced components of anlaysis, such as politeness.

In general, you should find some data and play around. Try to get a sense of what your data is and understand what it is telling you.