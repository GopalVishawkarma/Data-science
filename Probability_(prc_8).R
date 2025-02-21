#Suppose the number of games in which major league baseball players play during 
#their careers is normally distributed with mean equal to 1500 games and standard
#deviation equal to 350 games. Use R to solve the following problems.
#(a) What percentage play in fewer than 750 games?
#(b) What percentage play in more than 2000 games?
#(c) Find the 90th percentile for the number of games played during a career.

print("What percentage play in fewer than 750 games")
pa<-pnorm(750, mean = 1500, sd = 350)
Percenta <- pa*100
print(Percenta)

print("What percentage play in more than 2000 games")
pb<-pnorm(2000, mean = 1500, sd = 350, lower.tail = FALSE)
Percentb <- pb*100
print(Percentb)

print("the 90th percentile for the number of games played during a career")
p05<-round(qnorm(0.05,mean = 1500, sd = 350),0)
p95<-round(qnorm(0.95,mean = 1500, sd = 350),0)
cat("Range for 90 Percentile is : ",p05,"-",p95)
