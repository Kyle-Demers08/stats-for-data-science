kids = 1:6
sampled = sample(kids)
identical(1:3,1:4) + 4
identical(1:2,1:2) + 4
nrep = 100000
numsuc = 0
for(i in 1:nrep){
  sampled = sample(kids)
  numsuc = numsuc + identical(sampled, 1:6)
}
numsuc/nrep

nrep = 10000
die = function(nrep){
  count = 0
  for(i in 1:nrep){
  die1 = sample(1:6)[1]
  die2 = sample(1:6)[1]
  die3 = sample(1:6)[1]
  if (sum(die1,die2,die3) == 8){
      count = count + 1
    }
  }
  return(count/nrep)
}
attempt = c(rep(0,5))
for (i in 1:5){
attempt[i] = die(100000)
}
mean(attempt)
