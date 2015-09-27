ln <- function(x) { log(x, 2.718281828)}
x=c(10^(1:10))
y=c(4,25,168,1229,9592,78498,664579,5671455,50847534,455052512)
newy=y/x
newx=1/ln(x)
plot(newx,newy,pch=19,xlab="1 / lnx",ylab="#primes / x")
fit1<-lm(newy~newx)
abline(fit1)
confint(fit1)
