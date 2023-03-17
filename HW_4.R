View(HONEYCOUGH)
attach(HONEYCOUGH)
var.test(HONEY,DM, ratio = 1)
detach(HONEYCOUGH)
attach(BLACKBREAM)
View(BLACKBREAM)
lm(STRIKES ~ AGE)
detach(BLACKBREAM)
attach(BOXING2)
View(BOXING2)
model1 = lm(LACTATE~RECOVERY)
model1
#plot(LACTATE, RECOVERY) 
#Visually checked for dependence
anova(model1)
confint(model1,level = .9)





calls = c(18,23,25,15,8,20,12)
sales = c(10,11,15,8,3,11,7)
asss= calls -mean(calls)
mean(sales)
sum(asss^2)
sum(calls*sales)
1256 - 7*(17.728571)*(9.285714)
poo= sales - mean(sales)
sum(poo^2)
103.6429/219.4286
9.285714 - .4723 * 17.28571
pee = 1.121673 + (.4273 * calls)
sqrt(sum((sales - pee)^2) /5)
