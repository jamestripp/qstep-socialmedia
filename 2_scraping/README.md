# R Scraping

This folder contains a R notebook file. The purpose of the file is to introduce you to downloading and filtering HTML pages in R, and how to create simple summaries and visualisations of the data. We choose Twitter as an example social media network. The approach will work with any webpage.

# Usage

The .rmd file in this directory can be openend up in RStudio. The R notebook format allows one to run code alongside text in a rather nice format. More details about the R notebook format are available from the rmarkdown book section dedicated to R notebooks [here](https://bookdown.org/yihui/rmarkdown/notebook.html).

An HTML version of the output (which you can view within the browser) can be viewed [here](https://agnor.lnx.warwick.ac.uk/social_media/2_scraping.html).

# Going further

If you do want to go further, then the following links may be of use to you:

* [rvest](https://github.com/tidyverse/rvest) - The main package we use in this section. The rvest package allows one to filter an HTML page for specific elements
* [Data tranformation chapter from 'R for Data Science'](https://r4ds.had.co.nz/transform.html) - We use several tidyverse operation to try to summarise our data. This chapter introduces some of these functions.
* [Documentation of the summarise function](https://dplyr.tidyverse.org/reference/summarise.html) - Summarise takes a while to understand but can be very useful for creating readable code which summrises your data.
* [ggplot2 page on tidyverse site](https://ggplot2.tidyverse.org) - The cheat sheet on this page is very useful for constructing visualisations.
* [Hadley Wickham - Layered grammer of graphics](http://vita.had.co.nz/papers/layered-grammar.html) - Paper outlining the basis for ggplot2. Useful for historical refernce and to undrstand the underpinning ideas around ggplot2.
* [Guide for the grammer of graphics](https://towardsdatascience.com/a-comprehensive-guide-to-the-grammar-of-graphics-for-effective-visualization-of-multi-dimensional-1f92b4ed4149) - An interesting look at the 'grammer of graphics' which was an inspiration for visualisation approaches, including ggplot2.