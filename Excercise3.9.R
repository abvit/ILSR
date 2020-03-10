#3.9
Auto = read.csv("Auto.csv", header = T , na.strings = "?")
Auto = na.omit(Auto)
attach(Auto)
#a)
pairs(Auto)

#b)
cor(subset(Auto,select=-name))

#c)
lm.fit = lm(mpg ~.-name,data = Auto )
summary(lm.fit)

#i)
#Yes there is a relationship between predictors and response as we see that p value is small for year and weight

#2)
# displacement, weight , year and origin have statistically significant relationship to the response.

#3)The newer versions are found to provide better mpg and hence are more fuel efficient.


par(mfrow = c(2,2))
plot(lm.fit)

#e)
lm.fit2 = lm(mpg ~ cylinders * displacement + displacement*weight, data = Auto)
summary(lm.fit2)
#From the correlation matrix it can be observed that the two highest correlated pairs and use them in testing interaction effects
#Interaction between displacement and weight is statistically significant


#f)
lm.fit3 = lm(mpg~sqrt(weight) + log(displacement) + acceleration + I(acceleration^2))
summary(lm.fit3)
