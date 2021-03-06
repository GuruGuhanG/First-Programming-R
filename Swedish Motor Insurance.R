setwd ("C:/Users/g.guruguhan/Downloads")
data_insurance = read.csv("SwedishMotorInsurance.csv")
View(data_insurance)
str(data_insurance) #-- returns the data types and the total observations for the dataset

require("psych")
describe(data_insurance)

require("corrplot")

cor(data_insurance[c("Payment","Claims","Insured")])

windows()

pairs.panels(data_insurance[c("Payment","Claims","Insured")])

lineModel = lm(Payment ~ ., data = data_insurance)

summary(lineModel)

claimmod = lm(Claims ~., data = data_insurance)

summary(claimmod)


aggre=aggregate(data_insurance[,c(5,6,7)], by = list(data_insurance$Zone),FUN =mean, na.rm=TRUE)
aggre


aggre=aggregate(data_insurance[,c(5,6,7)], by = list(data_insurance$Kilometres),FUN =mean, na.rm=TRUE)
aggre


bonus_aggre=aggregate(data_insurance[,c(5,6,7)], by = list(data_insurance$Bonus),FUN =mean, na.rm=TRUE)
bonus_aggre


