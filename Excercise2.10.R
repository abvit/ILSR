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


#d)
plot(crim)
#Use identify to find the suburbs with high crime rate
identify(crim)
#We find suburbs 381,419,406,411 have high crime rates [88.972,73.5341,67.9208,51.1358]
range(crim)
#We find the crim parameter to have a range from 0.00632 - 88.97620


#plot the histogram for tax parameter
hist(tax,breaks = 25)
#We observe that most suburbs have tax from 187 - 430 and then is large gap with the peak tax observed at 711
range(tax)

#plot the histogram for ptratio 
hist(ptratio,breaks = 25)
range(ptratio)
#We observe the pupil teacher ratio to vary from 12.6 - 22.0
#No particularly high ptratios

#e)
#To find the number of suburbs bound by charles river
dim(subset(Boston,chas == 1 ))
#We find there are 35 suburbs that meet the condition

#f)
#To find the medain ptratio
median(ptratio)

#g)
#To find the suburb with the lowest median value of ownwer occupied homes
subset(Boston, medv == min(medv))
#We find that the suburbs 399 and the suburb 406 have the lowest median value of owner occupied homes 1

#h)
#No of Suburbs with greater than seven rooms per dwelling
length(rm[rm > 7])

#No of suburbs with greater than eight rooms per dwelling
length(rm[rm>8])


comparison = as.factor(as.character(lapply(rm,function(x) ifelse(x > 8 , "[8 +inf]",ifelse(x >7 , "[7 - 8]","[0 - 7]")  ))))
plot(comparison,medv,varwidth = T , ylab = "Median values by $1000", xlab = "Average number of rooms" ,title ="Median value of owner occupied homes")
#We can see from the graph that the median price increase with the number of rooms, also there are a few outliers to this, as you can see from the graph there is a suburb where the average number of rooms is greater than 8 but the price is expectionaly low.
