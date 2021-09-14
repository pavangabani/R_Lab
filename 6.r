n1 = as.integer(readline(prompt="Enter first number: "))
n2 = as.integer(readline(prompt="Enter second number: "))
for(i in n1:n2 ){
    t=0
    for(j in 1:i){
       if(i %% j == 0) {
           t=t+1
       }
    }
    if(t==2){ 
        print(i)}
    t=0
}
