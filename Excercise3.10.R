library(ISLR)
fix(Carseats)
attach(Carseats)

#a)
lm.fit = lm(Sales~Price+Urban+US)
summary(lm.fit)

#b)
#The model suggests that there is a relationship between price and sales given the low p value of the t statistic.
#The model suggests that as the price increases there is a decrease in sale and vice verse.

#The model suggests that there is no relationship between whether the store is located in an urban area or not and the sales.
#This can be concluded from the high p value for t statistic

#THe model suggests that there is a relationship between the sales and if the store is in US. 
#If the store is in US, then there is an increased chance that the sales will be more.


#c)
#Sales = 13.043 + -0.054459*Price + - 0.021916*UrbanYes + -1.200573*USYes 

#d)
#We can reject the null hyposthesis for Price and USYes based on the low p value for the t statisic , F statistic and p value for the f statistic
#T statistic tell us if a single variable is statistically significant
#F test will tell if a group of variable is statistically significant


#e)
lm.fit = lm(Sales~Price+US)

#f)
summary(lm.fit)
#Based on RSE and R^2 of the linear regression, they both fit the data similarly

#g)Confidence interval
confint(lm.fit)

#h)
par(mfrow=c(2,2))
plot(lm.fit)
#The plot indicates there are a few outliers having high leverage

