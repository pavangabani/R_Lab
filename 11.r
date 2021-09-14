fibonacci<- function(count){
    a<-0
    b<-1
    while(count){
     c=a+b
     print(c)
     a=b
     b=c
     count=count-1;
    }
}
fibonacci(10)