
lambda= 1/10000 #esperanza de una exponenecial= 1/lambda

#apartado 1 P(x>13000)
1-pexp(13000, lambda)

#apartado 2
qexp(0.8, lambda)

#apartado 3 
n=100
set.seed(85)
sim<- rexp(n, lambda)
mean(sim)
median(sim)
var(sim)

