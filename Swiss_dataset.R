#get information on the dataset
?swiss
#load data
data(swiss)

#returns the dimension
dim(swiss)

head(swiss)
tail(swiss)
row.names(swiss)
summary(swiss)
boxplot(swiss)
library(psych)
describe(swiss)
cor(swiss)
library(psych)
pairs.panels(swiss)
//
plot(swiss)
hist(swiss$Fertility,main="Fertility",xlab="Fertility")
plot(density(swiss$Fertility),main="Fertility")
rug(swiss$Fertility)
##
hist(swiss$Education,main="Education", xlab = "Education")

hist(swiss$Agriculture,main="Agriculture", xlab = "Agriculture")
plot(density(swiss$Agriculture),main="Agriculture")
rug(swiss$Agriculture)

hist(swiss$Catholic,main="Catholic", xlab = "Catholic")
hist(swiss$Examination,main="Examination", xlab = "Examination")

hist(swiss$Infant.Mortality,main="Infant.Mortality", xlab = "Infant.Mortality")
pairs(swiss, panel = panel.smooth, main = "swiss data", col = 3 + (swiss$Catholic > 50))
//
t.test(swiss$Education)
t.test(swiss$Agriculture)
t.test(swiss$Examination)
t.test(swiss$Catholic)
t.test(swiss$Infant.Mortality)
model <- lm(Fertility ~ Agriculture + Examination + Education + Catholic + Infant.Mortality, swiss)
summary(model)

hist(swiss$Fertility,freq=F,add=T)
//
qqnorm(swiss$Fertility, ylab="Fertility")
qqline(swiss$Fertility)