library("ggthemes") #theme for graph 
library(tidyverse) #graph
mydata <- read.csv('E:\\Desktop\\pavan\\5th sem\\3CP05\\project.csv', header = TRUE)

print(head(mydata))

model <- lm( EstimatedSharesOutstanding ~ CashRatio + CurrentRatio + FixedAssets + ForYear + EarningsPerShare +
             TotalAssets + TotalCurrentAssets + TotalCurrentLiabilities + TotalEquity + Investments + 
             NetCashFlow + ProfitMargin + TotalRevenue , data = mydata )

print(summary(model)$coef)

newdata <- data.frame(CashRatio=58,CurrentRatio=115,FixedAssets=1156000000,ForYear=2015,EarningsPerShare=4,
                      TotalAssets=8869000000,TotalCurrentAssets=1817000000,TotalCurrentLiabilities=1583000000,
                      TotalEquity=2183000000,Investments=-35000000,NetCashFlow=683000000,ProfitMargin=12,
                      TotalRevenue=6282000000)	


predicted_Estimated_Shares_Outstanding<-predict(model,newdata)
print(predicted_Estimated_Shares_Outstanding)

print("accurecy :")
accurecy<-predicted_Estimated_Shares_Outstanding/183255152.7
print(accurecy)

print(ggplot(mydata, aes(x=EstimatedSharesOutstanding)) + geom_point(aes(y = CashRatio), color = "steelblue") 
                                                        + geom_point(aes(y = CurrentRatio), color = "darkred")
                                                        + geom_point(aes(y = ProfitMargin), color = "black")
                                                        + ggtitle("Share market")
                                                        + theme_wsj()+ scale_colour_wsj("colors6"))