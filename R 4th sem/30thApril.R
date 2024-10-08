install.packages("tm")
install.packages("wordcloud")
install.packages("corpustools")
install.packages("NLP")
install.packages("RColorBrewer")
library(NLP)
library(tm)
library(RColorBrewer)
library(wordcloud)
library(corpustools)

# Replace the file path below with the correct path to your CSV file
a <- read.csv("/Users/nileshranjansahu/Downloads/comments.csv")

# Check the structure of your dataframe
View(a)

# Create a corpus from the Comments column of your dataframe
cor <- Corpus(VectorSource(a$Comments))
cor[[1]][1]

# Perform text preprocessing if necessary (e.g., remove punctuation, convert to lowercase, remove stopwords)
#cor <- tm_map(cor, content_transformer(tolower))
#cor <- tm_map(cor, removePunctuation)
#cor <- tm_map(cor, removeNumbers)
#cor <- tm_map(cor, removeWords, stopwords("english"))

# Generate a word cloud
cor<-tm_map(cor,content_transformer(function(x)iconv(x,"latin1","ASCII",sub="")))
cor<-tm_map(cor,removeNumbers)
cor<-tm_map(cor,removeWords,stopwords("english"))
cor[[1]][1]
wordcloud(cor, scale=c(5,0.5), max.words=100, random.order=FALSE)
tdm<- TermDocumentMatrix(cor)
m<-as.matrix(tdm)
v<-sort(rowSums(m),decreasing = TRUE)
d<-data.frame(word=names(v),frequency=v)





#########################################################
#Heat maps shows where values has higher magnitude and where values has less magnitude.
#dark color indicate higher magnitude and light colors indicate less magnitude.
#Syntax

#heatmap(x, scale, na.rm, col, labRow, labCol, main)

#x is the numeric matrix containing the values being used in creating the heat map.
#col is the color palette to be used by the heat map.
#na.rm is a logical value that determines whether NA values should be removed.
#labRow is a vector of the row labels and is rownames(x) by default.
#labCol is a vector of the column labels and is colnames(x) by default.
#main is the name of the heat map.
#scale is used to determine where the values are to be centered and scaled in.
#It can have the values of “row”, “column”, or “none” and is “row” by default.

str(mtcars)

rownames(mtcars)
colnames(mtcars)

#convert data frame into matrix

data <- as.matrix(mtcars)
heatmap(data,scale="column",col=heat.colors(256), main = "Characterstics of car models",Rowv = NA,Colv = NA)

#heatmap with enhanced colours

heatmap(data,scale="column",col=rainbow(length(data)), main = "Characterstics of car models",Rowv = NA,Colv = NA)
