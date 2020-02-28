#3.8

#a
lm.fit = lm(  mpg ~ horsepower)
summary(lm.fit)

** Is there a relationship between the predictor and the response
#Yes there is a negative relationship between horsepower and mpg, this is indicated by the small p value and the estimate being much larger compared to the standard error.

** How strong is the relationship between the predictor and the response
# R^2 value = .6059 , which implies that 60% of the variance in mpg is explained by horsepower, which indicates a good relationship

**Is the relationship between the predictor and the response positive or negative
#The relationship between horsepower(predictor) and the response(mpg) is negative

**What is the predicted mpg associated with a horsepower of 98?
predict(lm.fit, data.frame(horsepower= 98) , interval = 'confidence')
predict(lm.fit,data.frame(horsepower = 98) , interval ="predict")

#b)
plot(horsepower, mpg)
abline(lm.fit,col = "red", lwd = 3)

#C)
par(mfrow = c(2,2))
plot(lm.fit)
