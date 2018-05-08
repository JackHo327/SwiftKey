## WEEK 1
library(stringr)
library(readr)
library(dplyr)

blog <- read_delim("./SwiftKeyDS/en_US/en_US.blogs.txt",delim = "\n",locale = locale(encoding = "UTF-8"),quote = "",col_names = F)
news <- read_delim("./SwiftKeyDS/en_US/en_US.news.txt",delim = "\n",locale = locale(encoding = "UTF-8"),quote = "",col_names = F)
twitter <- read_delim("./SwiftKeyDS/en_US/en_US.twitter.txt",delim = "\n",locale = locale(encoding = "UTF-8"),quote = "",col_names = F)

# No 1
object.size(blog)/1024/1024
WW
# No 2
system('bash -c "wc -l /mnt/d/Github/swiftkey-capstone-project-coursera-jhu/SwiftKeyDS/en_US/en_US.twitter.txt"')

# No 3
apply(blog,1,str_length) %>% max()
apply(news,1,str_length) %>% max()
apply(twitter,1,str_length) %>% max()

# No 4
(apply(twitter, 1, function(x){
      if(str_detect(string = x, pattern = "love")){
            return(1)
      }else{
            return(0)
      }
})%>% sum()) / (apply(twitter, 1, function(x){
      if(str_detect(string = x, pattern = "hate")){
            return(1)
      }else{
            return(0)
      }
})%>% sum())

# No 5
# pass

# No 6
twitter %>% filter(X1 == "A computer once beat me at chess, but it was no match for me at kickboxing") %>% nrow()
