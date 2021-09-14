
len <- 10
fib<- numeric(len)
fib[1] <- 1
fib[2] <- 1
for (i in 3:len) { 
   fib[i] <- fib[i-1]+fib[i-2]
}
print(fib)