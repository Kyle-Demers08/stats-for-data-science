View(MTBE)
attach(MTBE)
priv = sum(WellClass == 'Private')
pub = length(WellClass) - priv
barplot(c(priv, pub),
      names.arg = c('Private', 'Public'),
      main = 'Private vs Public Well Class',
      col = c('Blue', 'Black'),
      ylab = 'Counts')
unconsoli = sum(Aquifier == 'Unconsoli')
aquifier = length(Aquifier) - unconsoli
barplot(c(unconsoli,aquifier),
        names.arg = c('Unconsoli', 'Aquifier'),
        main = 'Unconsoli vs Aquifier',
        col = c('Blue', 'Black'),
        ylab = 'Counts')
unconsoli
mtbebel = sum(MTBEDetect == 'Below Limit')
mtbedet = length(MTBEDetect) - mtbebel
mtbedet
barplot(c(mtbebel, mtbedet),
        names.arg = c('Below Limit', 'Detected'),
        main = 'Below Limit vs Detected',
        col = c('Blue', 'Black'),
        ylab = 'Counts')
df = data.frame(MTBEDetect == 'Below Limit')
View(df)
sum(WellClass == 'Private' && MTBEDetect == 'Below Limit')
detach(MTBE)

belowLimit = MTBE$MTBEDetect == 'Below Limit'
private = MTBE$WellClass == 'Private'
df = data.frame(belowLimit,private) 
belowT = df[df$belowLimit == T,]#create a data frame where its below level
BelowPrivate = belowT[belowT$private == T,]#private & below
Belowpublic = belowT[belowT$private == F,] #public & below
BelowPrivateTotal = sum(BelowPrivate$belowLimit == T)#get a count
BelowPublicTotal = sum(Belowpublic$belowLimit == T) #get a count
below = c(BelowPrivateTotal,BelowPublicTotal)

Detect = df[df$belowLimit == F,]
Detect
DetectPrivate = Detect[Detect$private == T,]#detected and private
DetectPublic = Detect[Detect$private == F,]#detected and public
DetectPrivateTotal = sum(DetectPrivate$belowLimit == F) #get a count
DetectPublicTotal = sum(DetectPublic$belowLimit == F) #get a count
detect = c(DetectPrivateTotal,DetectPublicTotal)
barplot(c(below,detect),beside = T,
        names.arg = c('Below and Private', 'Below and public', 'Detected and Private', 'Detected and Public'),
        main = "Private vs public Contaminated Wells")
### Ship Sanitation ###
View(SHIPSANIT)
attach(SHIPSANIT)
y = mean(Score)
y
s = sd(Score)
s
lowerBound = y - 2 * s
upperBound = y + 2 * s
lowerBound
upperBound
total = sum(Score > lowerBound) 
total / 169
detach(SHIPSANIT)
### WPOWER50 ###
View(WPOWER50)
attach(WPOWER50)
y = mean(AGE)
y
s = sd(AGE)
s
lowerBound = y - 2 * s
upperBound = y + 2 * s
lowerBound
upperBound
total = sum(AGE > lowerBound) 
total / 50
detach(WPOWER50)
#a-i
pnorm(2.1)
pnorm(1.3,3,.5,lower.tail = F)
qnorm(.13,3,.5)
qnorm(.53,3,.5)
ppois(11,10,lower.tail = F)
ppois(9,10)
ppois(10,10,lower.tail = F)
pbinom(13,15,.8, lower.tail = F)
pbinom(8,15,.8)
pbinom(14,15,.8) - pbinom(13,15,.8)
