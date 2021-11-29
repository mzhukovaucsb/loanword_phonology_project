library(ggplot2)
library(ggpubr)

#all vowels
summary(data1 <- read.delim("vowels.csv", stringsAsFactors=TRUE,sep=","))
attach(data1)
p <- ggplot(data1) + aes(FONETIKA,VERBFREQ) 
p + geom_point(aes(colour=VERBAFFVOWEL)) + facet_wrap( ~ LOAN)

#same vowel
summary(data2 <- read.delim("same_vowels.csv", stringsAsFactors=TRUE,sep=","))
attach(data2)
p <- ggplot(data2) + aes(FONETIKA,VERBFREQ) 
p + geom_point(aes(colour=VERBAFFVOWEL)) + facet_wrap( ~ LOAN)

#removing the most frequent verbs
data3 <- subset(data1, VERBFREQ < 1500)
data4 <- subset(data2, VERBFREQ < 1500)

p <- ggplot(data3) + aes(LEVENSTEIN,VERBFREQ) 
p + geom_point(aes(colour=VERBAFFVOWEL)) + facet_wrap( ~ LOAN)

p <- ggplot(data4) + aes(LEVENSTEIN,VERBFREQ) 
p + geom_point(aes(colour=VERBAFFVOWEL)) + facet_wrap( ~ LOAN)

#selecting only verbs with the same suffix
data5 <- subset(data4, VERBAFFVOWEL == "SAME")

p <- ggplot(data5) + aes(LEVENSTEIN,VERBFREQ)
p + geom_point(aes(colour=VERBAFFVOWEL)) + facet_wrap( ~ LOAN) 

#reducing levenstein
data6 <- subset(data5, LEVENSTEIN < 6)

p <- ggplot(data6) + aes(LEVENSTEIN,VERBFREQ)
p + geom_point(aes(colour=VERBAFFVOWEL)) + facet_wrap( ~ LOAN) 

#more frequent verbs
data7 <- subset(data6, VERBFREQ > 250)

p <- ggplot(data7) + aes(LEVENSTEIN,VERBFREQ)
p + geom_point(aes(colour=VERBAFFVOWEL)) + facet_wrap( ~ LOAN) 
#+ geom_text(aes(label = VERB))


