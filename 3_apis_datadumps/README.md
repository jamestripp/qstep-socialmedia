# R APIs and JSON data dumps

This folder contains a R notebook file. The purpose of the file is to introduce you to download json data from the 4chan and Reddit using httr and RedditExtractoR. The data is structured and we consider how to process this data. In addition, the file shows example code for connecting to the YouTube and Twitter APIs.

# Usage

The .rmd file in this directory can be openend up in RStudio. The R notebook format allows one to run code alongside text in a rather nice format. More details about the R notebook format are available from the rmarkdown book section dedicated to R notebooks [here](https://bookdown.org/yihui/rmarkdown/notebook.html).

An HTML version of the output (which you can view within the browser) will be available before the start of the workshop.

# Going further

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