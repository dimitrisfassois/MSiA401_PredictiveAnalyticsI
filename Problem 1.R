# Linear regression of the response variable: number of primes less than or equal to a number x / x, on the 
# predictor variable: 1/ln(x). This tries to prove the theoretical relationship.

ln <- function(x) { log(x, 2.718281828)} # Create a function to compute the ln of a number x
x=c(10^(1:10)) # Create the data for the numbers x, where x=10^m, where m = 1,...,10
y=c(4,25,168,1229,9592,78498,664579,5671455,50847534,455052512) # The y's are the number of primes less than or equal to each x
newy=y/x # The response variable
newx=1/ln(x) # The predictor variable
plot(newx,newy,pch=19,xlab="1 / lnx",ylab="#primes / x") # Plotting to show to relationship of the variables
fit1<-lm(newy~newx) # Fit linear regression model
abline(fit1) # Show the fitted line
confint(fit1) # The CI included 1 suggesting the two equations are equal.