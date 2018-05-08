<!-- TOC -->

- [SwiftKey](#swiftkey)
- [Proejct Overview](#proejct-overview)
- [Tasks](#tasks)
- [SessionInfo](#sessioninfo)

<!-- /TOC -->

# SwiftKey

This repo is the capstone project of my data science specilization, which is released by Johns Hopkins University on Coursera.

# Proejct Overview

*This project overview is provided by the data science specilization and SwiftKey*.

> Around the world, people are spending an increasing amount of time on their mobile devices for email, social networking, banking and a whole range of other activities. But typing on mobile devices can be a serious pain. SwiftKey, our corporate partner in this capstone, builds a smart keyboard that makes it easier for people to type on their mobile devices. One cornerstone of their smart keyboard is predictive text models. When someone types: "I went to"

> the the keyboard presents three options for what the next word might be. For example, the three words might be gym, store, restaurant. In this capstone you will work on understanding and building predictive text models like those used by SwiftKey.

> This course will start with the basics, analyzing a large corpus of text documents to discover the structure in the data and how words are put together. It will cover cleaning and analyzing text data, then building and sampling from a predictive text model. Finally, you will use the knowledge you gained in data products to build a predictive text product you can show off to your family, friends, and potential employers.

> You will use all of the skills you have learned during the Data Science Specialization in this course, but you'll notice that we are tackling a brand new application: analysis of text data and natural language processing. This choice is on purpose. As a practicing data scientist you will be frequently confronted with new data types and problems. A big part of the fun and challenge of being a data scientist is figuring out how to work with these new data types to build data products people love. The capstone will be evaluated based on the following assessments:

> An introductory quiz to test whether you have downloaded and can manipulate the data. An intermediate R markdown report that describes in plain language, plots, and code your exploratory analysis of the course data set. Two natural language processing quizzes, where you apply your predictive model to real data to check how it is working. A Shiny app that takes as input a phrase (multiple words), one clicks submit, and it predicts the next word. A 5 slide deck created with R presentations pitching your algorithm and app to your boss or investor.

> During the capstone you can get support from your fellow students, from us, and from the engineers at SwiftKey. But we really want you to show your independence, creativity, and initiative. We have been incredibly impressed by your performance in the classes up until now and know you can do great things.

> We have compiled some basic natural language processing resources below. You are welcome to use these resources or any others you can find while performing this analysis. One thing to keep in mind is that we do not expect you to become a world's expert in natural language processing. The point of this capstone is for you to show you can explore a new data type, quickly get up to speed on a new application, and implement a useful model in a reasonable period of time. We think NLP is very cool and depending on your future goals may be worth studying more in-depth, but you can complete this project by using your general knowledge of data science and basic knowledge of NLP.

> Here are a few resources that might be good places to start as you tackle this ambitious project.

> - [Text mining infrastucture in R](https://www.jstatsoft.org/article/view/v025i05)
> - [CRAN Task View: Natural Language Processing](https://cran.r-project.org/web/views/NaturalLanguageProcessing.html)
> - Videos and [Slides](https://web.stanford.edu/~jurafsky/NLPCourseraSlides.html) from Stanford Natural Language Processing course

# Tasks

- Task 0: Understanding the Problem.

>- Obtaining the data - Can you download the data and load/manipulate it in R?
>- Familiarizing yourself with NLP and text mining - Learn about the basics of natural language processing and how it relates to the data science process you have learned in the Data Science Specialization.

*Questions to consider*:

>- What do the data look like?
>- Where do the data come from?
>- Can you think of any other data sources that might help you in this project?
>- What are the common steps in natural language processing?
>- What are some common issues in the analysis of text data?
>- What is the relationship between NLP and the concepts you have learned in the Specialization?

- Task 1:

>- Tokenization - identifying appropriate tokens such as words, punctuation, and numbers. Writing a function that takes a file as input and returns a tokenized version of it.
>- Profanity filtering - identifying appropriate tokens such as words, punctuation, and numbers. Writing a function that takes a file as input and returns a tokenized version of it.

*Tips, tricks, and hints*:

> **Loading the data in**. This dataset is fairly large. We emphasize that you don't necessarily need to load the entire dataset in to build your algorithms. At least initially, you might want to use a smaller subset of the data. Reading in chunks or lines using R's readLines or scan functions can be useful. You can also loop over each line of text by embedding readLines within a for/while loop, but this may be slower than reading in large chunks at a time. Reading pieces of the file at a time will require the use of a file connection in R. For example, the following code could be used to read the first few lines of the English Twitter dataset:

```r
con <- file("en_US.twitter.txt", "r")
readLines(con, 1) ## Read the first line of text
readLines(con, 1) ## Read the next line of text
readLines(con, 5) ## Read in the next 5 lines of text
close(con) ## It's important to close the connection when you are done
```

> **Sampling**. To reiterate, to build models you don't need to load in and use all of the data. Often relatively few randomly selected rows or chunks need to be included to get an accurate approximation to results that would be obtained using all the data. Remember your inference class and how a representative sample can be used to infer facts about a population. You might want to create a separate sub-sample dataset by reading in a random subset of the original data and writing it out to a separate file. That way, you can store the sample and not have to recreate it every time. You can use the rbinom function to "flip a biased coin" to determine whether you sample a line of text or not.



# SessionInfo

```r
> sessionInfo()
R version 3.4.3 (2017-11-30)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows >= 8 x64 (build 9200)

Matrix products: default

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252
[3] LC_MONETARY=English_United States.1252 LC_NUMERIC=C
[5] LC_TIME=English_United States.1252

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base

other attached packages:
[1] RevoUtilsMath_10.0.1 RevoUtils_10.0.7     RevoMods_11.0.0      MicrosoftML_9.3.0    mrsdeploy_1.1.3
[6] RevoScaleR_9.3.0     lattice_0.20-35      rpart_4.1-11

loaded via a namespace (and not attached):
 [1] codetools_0.2-15       CompatibilityAPI_1.1.0 foreach_1.4.5          grid_3.4.3
 [5] R6_2.2.2               jsonlite_1.5           curl_3.1               iterators_1.0.9
 [9] tools_3.4.3            yaml_2.1.16            compiler_3.4.3         mrupdate_1.0.1
```