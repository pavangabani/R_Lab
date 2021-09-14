a<- as.integer(readline(prompt="enter a integer :"))
for(i in 1:a)
{
    if(a %% i==0) {
        print(i)
    }
}