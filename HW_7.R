fun1 = function(x) {.044 + .269 * x}
fun2 = function(x) {.308 - .673 * x}
curve(fun1, from = -2, to = 2)
curve(fun2, add = TRUE, from = -2, to = 2, col = 2)
attach(RADICALS)
plot(Time,SPRate, main="Scatterplot", xlab="Time ", ylab="Surface Production Rate", pch=19)
detach(RADICALS)
attach(GASTURBINE)
lm(GASTURBINE)
attach(NAVALBASE)
model1 = lm(PERCENT ~ COST + I(COST^2))
summary(model1)
