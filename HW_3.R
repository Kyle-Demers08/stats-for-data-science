View(DECAY)
t.test(DECAY$RATE)
claim = c(25,23,21,21,20)
t.test(claim,mu = 15)
View(GASTURBINE)
n = 67
#Ho: mu = 10,000
#Ha: mu > 10,000
# One tailed Z test
mean_sample = mean(GASTURBINE$HEATRATE)
sd_sample = sd(GASTURBINE$HEATRATE)
z = (mean_sample - 10000) / (sd_sample / sqrt(n))
p = pnorm(z, lower.tail = F)
t.test(GASTURBINE$HEATRATE, mu = 10000, alternative = 'greater')
p
n
mean_sample
sd_sample
z
View(VOLTAGE)
new = VOLTAGE$VOLTAGE[VOLTAGE$LOCATION == "NEW"]
old = VOLTAGE$VOLTAGE[VOLTAGE$LOCATION == "OLD"]
t.test(new,old)
View(HOMOPHONE)
t.test(HOMOPHONE$TIME1,HOMOPHONE$TIME2, alternative = "less")
