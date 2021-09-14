# Create the histogram.
v <-  c(9,13,21,8,36,22,12,41,31,33,19)
png(file = "histogram.png")
hist(v,xlab = "Weight",col = "yellow",border = "blue")
dev.off()

# Create the linechart.
v <- c(7,12,28,3,41)
png(file = "line_chart.jpg")
plot(v,type = "o")
dev.off()

# create the scatterplot
input <- mtcars[,c('wt','mpg')]
png(file = "scatterplot.png")
plot(x = input$wt,y = input$mpg,
   xlab = "Weight",
   ylab = "Milage",
   xlim = c(2.5,5),
   ylim = c(15,30),		 
   main = "Weight vs Milage"
)
dev.off()