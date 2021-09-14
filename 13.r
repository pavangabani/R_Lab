prime_number<-function(a,b){
    for(i in a:b){
        c=0
        for(j in 1:i){
            if(i%%j==0){c=c+1}
        }
        if(c==2) {print(i)}
    }
}
prime_number(1,11)