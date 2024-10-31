#POISSON

##P(x=20)
x<- 20
lambda<- 25 #lambda = esperanza
f<- (exp(-lambda)*lambda^x)/factorial(x) #distr. de masa de probailidada
dpois(x,lambda) #dpois=f 

##función de distribución de f
X<- 0:40
graph<- dpois(X,lambda)
plot(X, graph, type='h', col= 'red')

## P(x<=20)
ppois(x, lambda)# ppois=F

##P(18<=x<=22)
ppois(22,lambda)-ppois(17,lambda)

#distribución de F
plot(X, ppois(X,lambda), type='s', col='red')

#Mediana F(Xm)=0.5
qpois(0.5, lambda)

#1er cuartil
qpois(0.25, lambda)

##Resumen
#d= f(x)
#p= F(x)
#q= F^-1(x)
#r= simular

#EXPONENCIAL

#apartado 1 P(T=0.033)
dpois(0, 0.033*lambda) #f(0)= e^-lambda*t ( se pasa de Poisson a exponencial), t es el tiempo entre 2 eventos de Poisson
dexp(0.033, lambda) #como es continua=0, porque el area es 0 (lo anterior da mal)

#apartado 2 P(T>=0.52)
1-pexp(0.052, lambda)

#función de densidad
t<- seq(0,2, 0.01)
plot(t, dexp(t, lambda), type='l', col='red')

#función de distribución 
plot(t, pexp(t, lambda), type='l', col='red')

#apartado 3
n<- 500000
mean(rexp(n,lambda))
1/25 #tiempo esperado entre los dos sucesos



