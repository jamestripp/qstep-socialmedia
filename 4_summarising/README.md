# R Summarising

This folder contains a R notebook file. In the notebook we explore how one can create summaries of data tables in using the tidyverse commands. The best way to get used to creating summaries is to actually create some of your own. We use Reddit data for convenience, but the methods here can be used with any tabular data loaded into R as a tibble table.

# Usage

The .rmd file in this directory can be openend up in RStudio. The R notebook format allows one to run code alongside text in a rather nice format. More details about the R notebook format are available from the rmarkdown book section dedicated to R notebooks [here](https://bookdown.org/yihui/rmarkdown/notebook.html).

An HTML version of the output (which you can view within the browser) will be available before the start of the workshop.

# Going further

The tidyverse is an R movement mainly from the RStudio company. Some useful links for this are:

* [The tidytext section](https://www.tidytextmining.com/tidytext.html) of the useful 'Text mining with R' book
* [A gentle guide to Tidy Statistics in R](https://towardsdatascience.com/a-gentle-guide-to-statistics-in-r-ccb91cc1177e) by Thomas Mock - A nice overview of the tidyverse
* [The tidy tools manifesto](https://tidyverse.tidyverse.org/articles/manifesto.html) - Hadley Wickham taking a manifesto approach
* [Pipe section](https://r4ds.had.co.nz/pipes.html) of the R for data science book - in case the pipe requires additional clarification
* [Data Carpentry lesson: R for social scientists](https://datacarpentry.org/r-socialsci/) - an R workshop specifically for social scientists which you may find quite approachable

The best way to understand these tools is to use them, play with them, break them and produce something. A quick online search reveals [some r data sets for free](http://www.rdatamining.com/resources/data). Loading some of these datasets looks a little tricky. 

You can always try [FiveThirtyEight data sets](https://data.fivethirtyeight.com) - a news organisation which has released all their data in the [fivethirtyeight R package](https://cran.r-project.org/web/packages/fivethirtyeight/index.html)

```r
install.packages('fivethirtyeight')
```

And there is always the inbuilt R data sets.

```r
library(help="datasets")
```