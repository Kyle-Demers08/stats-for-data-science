ssxx = 17.5
ssyy = 14
ssxy = 15
r = ssxy/(sqrt(ssxx * ssyy))
r
r^2
  
View(TAMPALMS)
attach(TAMPALMS)
cor(Sale_Price,Market_Val)
cor(Sale_Price,Market_Val) ^ 2
detach(TAMPALMS)

sse = 59.21 - 16.22^2/4.77
sse
sq = sse/(20-2)
sq
t = qt(.025,18)
t
se = sqrt(sq * (1 + 1/20+(2.5-3)^2/4.77))
se
10.6 + t * se
10.6 - t * se

view(WHITESPRUCE)
attach(WHITESPRUCE)
plot(DIAMETER,HEIGHT)
model1 =lm(HEIGHT ~ DIAMETER)
model1
abline(model1)
summary(model1)
predict(model1,interval = "confidence",se.fit = T,level = .9)
#18.77632,19.28293
detach(WHITESPRUCE)

View(FHWABRIDGE)
attach(FHWABRIDGE)
model2 = lm(AREA ~ NUMBER)
model2
new = data.frame(NUMBER = 350)
predict(model2,new,interval = "prediction", level = .95)
#(0,1353.5) as 0 is the minimum
detach(FHWABRIDGE)

#y = b0 + b1x
View(MTBE)
attach(MTBE)
model3 = lm(MTBE$MTBE ~ MTBE$pH )
model3
anova(model3)
summary(model3)
plot(model3)
plot(MTBE$pH,MTBE$MTBE)
abline(model3)
