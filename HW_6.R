#4.6
View(STREETVN)
model1 = lm(formula = EARNINGS ~ AGE + HOURS, data = STREETVN)
summary(model1)
anova(model1)
sqrt(300016)
547.7372 * 2
confint(model1)
3.58 + .01 * 1 - .06 * 10 - .01 * 5 + .42 * 2 
3.58 + 0.01 * 0 - .06 * 8 - .01 * 10 + .42 * 4 
AGE = 45
HOURS = 10
new = data.frame(AGE,HOURS)
predict(model1,new,interval = 'prediction')
predict(model1,new,interval = 'confidence')
