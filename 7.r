a <- as.integer( readline(prompt="Enter an integer a : "))
b <- as.integer( readline(prompt="Enter an integer b : "))
c <- as.integer( readline(prompt="Enter an integer c : "))

d<- (b^2) - (4*a*c)
if(d < 0) {
    print("This quadratic equation has no real numbered roots.")
} else {
    r1<- (-b + sqrt(d)) / (2*a)
    r2<- (-b - sqrt(d)) / (2*a)
    print(paste(r1," ",r2))
}

