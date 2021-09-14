id <-c(1,2,3,4,5)
name<-c("pavan","mautik","rutvik","avi","jd")
data<-data.frame(id,name)
print(data)

data$gender<-c("male","male","male","male","male")
print(data)

new_entry<-data.frame(
    id= c(6),
    name = c("shyam"),
    gender = c("male")

)

data<-rbind(data,new_entry)
print(data)




