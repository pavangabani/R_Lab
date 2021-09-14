x <- c(12,3,7,3,4.2,18,2,54,-21,8,-5)
print(x)
result.mean <- mean(x,trim=0.3)
print("mean :")
print(result.mean)

median.result <- median(x)
print("median :")
print(median.result)

getmode <- function(v) {
uniqv <- unique(v)
uniqv[which.max(tabulate(match(v, uniqv)))]
}
result.mode <- getmode(x)
print("mode :")
print(result.mode)