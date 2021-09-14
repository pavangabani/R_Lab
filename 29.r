
colors <- c("green","orange","brown")
months <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11),nrow=3,ncol=5,byrow=TRUE)
png(file = "barchart_stacked.png")
barplot(Values,main="totalrevenue",names.arg=months,xlab="month",ylab="revenue",col=colors)
legend("topleft", regions, cex=1.3, fill=colors)
dev.off()