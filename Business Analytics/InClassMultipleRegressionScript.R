library(readxl)
library(tidyverse)

MRLabData <-read_excel("C:/Users/randa/Dropbox/Masters/Autumn/TBANLT 510 - Business Analytics/InClassLogReg/redfin_98391_98031.xlsx") # locate dataset from device

PriceLinearMod <- lm(MRLabData$PRICE ~ MRLabData$BATHS + MRLabData$BEDS + MRLabData$`SQUARE FEET` + MRLabData$`LOT SIZE` + as.factor(MRLabData$`YEAR BUILT`) + as.factor(MRLabData$`ZIP OR POSTAL CODE`) , data=MRLabData)  
summary(PriceLinearMod)

install.packages("Rserve")
library("Rserve")
Rserve()



train <- read.table("C:/Users/randa/Dropbox/Masters/Autumn/TBANLT 510 - Business Analytics/InClassLogReg/TrainingData.csv", sep=",", header=T)
model <- glm(LastYear ~ Year1 + Year2 + Year3 + Year4 + Year5, data = train, family=binomial)
test <- read.table("C:/Users/randa/Dropbox/Masters/Autumn/TBANLT 510 - Business Analytics/InClassLogReg/TrainingData.csv", sep=",", header=T)
test$pred <-predict(model, newdata = test, type = "response")
summary(model)
