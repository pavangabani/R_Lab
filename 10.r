a<- as.integer(readline(prompt="enter a integer :"))
while(a!=0){
  b<-0
  bit<-1
  while (a > 0) {
     r<-a %% 2
     a<-floor(a / 2)
     b<-b + r * bit
     bit<-bit * 10 
  }
print(b)
}