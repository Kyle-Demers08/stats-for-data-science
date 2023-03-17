EPAGAS$MPG
EPAGAS$MPG[1:7]
mean(EPAGAS$MPG) 
sd(EPAGAS$MPG) 
sd(EPAGAS$MPG)^2 
var(EPAGAS$MPG) 
my.unif.mean = function(iter = 100, n = 10){
  means = runif(iter,0,n)#create a vector of uniform means
  hist(means, breaks = c(0,n*.1,n*.2,n*.3,n*.4,n*.5,n*.6,n*.7,n*.8,n*.9,n)) # create a line showing the expected uniform frequencies
  curve(x * 0 + iter/10, 0, n, col ="darkblue", add = T) #add line showing expected frequency
}
my.unif.mean(n = 20)
data = runif(100) * 10
hist(data, breaks = c(0,1,2,3,4,5,6,7,8,9,10))
