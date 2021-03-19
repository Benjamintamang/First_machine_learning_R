#installing the caret library in Rstudio

install.packages("caret")

install.packages("caret", dependencies = c("Depends", "Suggests"))

library(caret)

##Loading the iris datset

data(iris)

library(dplyr)
##Getting glimpse of the data using glimpse() function from the dplyr package
glimpse(iris)

dataset <- iris

#80% of the data will be used to train the model and 20% will be used for validation

#create a list of 80% of the rows in the original dataset we can use for training
validation_index <- createDataPartition(dataset$Species, p = 0.80, list = FALSE)
#select 20% of the data for validation 
validation <- dataset[-validation_index,]
#use the remaining 80% for training and testing the models
dataset <- dataset[validation_index,]

##Peeking at the data
head(dataset,4)

head(validation, 5)

###Summarizing the datset
##dimensions
dim(dataset)

##Types of attributes
#list types for each attribute
sapply(dataset, class)

##class levels
levels(dataset$Species)

##class distribution
##summarize the class distribution
percentage <- prop.table(table(dataset$Species)) * 100
cbind(freq = table(dataset$Species), percentage = percentage)

###statistical summary
summary(dataset)


##Visualizing the datset first


