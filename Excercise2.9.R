#Question 9

#a)
# Quantitative : mpg, cyliders , displacement , horsepower, weight, acceleration, year
#Qualitative : Origin , Name

#b)
sapply(Auto[,1:7] , range)

#c)
#Mean of each quantitative predictor
sapply(Auto[1:7] ,mean)


#Standard deviation of each quantitative predictor
sapply(Auto[1:7],sd)

#d)
newauto = Auto[-(10:85),]

#range of the new subset
sapply(newauto[,1:7],range)

#mean of the new subset
sapply(newauto[,1:7], mean)

#standard deviation of the new subset
sapply(newauto[,1:7],sd)


#e)
pairs(Auto)
#As weight increases mpg decreases
plot(Auto$weight,Auto$mpg)

#As horse power increases mpg decreaes
plot(Auto$horsepower,Auto$mpg)


#As the weight increaes the horse power increaes
plot(Auto$weight,Auto$horsepower)


