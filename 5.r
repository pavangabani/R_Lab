num = as.integer(readline(prompt="Enter a number: "))
sum=0
t=num
while(t > 0) {
   r=t%% 10
   sum = sum +r*r*r
   t =floor(t/10)
}
if(sum==num) print("is armstrong no.") else print("is not armstrong no.")