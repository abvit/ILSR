#b)
#Wtih increase in age their is increase in crim
#With increase in diss there is decrease in crim
#With increase in medv their is decrease in crim 
#with increase in ptratio there is increase in indus
#with increase in age there is increase in nox
#with increase in dis there is ddecrease in nox
#with increase in medv there is increase in rm 


#crim : age, dis rad , tax,medv
#zn : chas, rad

#c)
attach(Boston)

plot(age,crim)
#Older homes ----- more crime

plot(dis,crim)
#Farther from the employeement centers lesser the crime


plot(age,nox)
#Older homes --- higher nitrogen oxides concentration 


plot(dis,nox)
#Further from employment centers less the nitrogen oxide concentration

plot(medv,rm)
#As the median value increases average number of rooms per dwelling increases




