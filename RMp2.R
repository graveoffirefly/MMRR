D=read.csv(file.choose())
head(D,3)
A= D$Wind.Speed
A
mean(A)
mode =function(x) {
  uniqx = unique(x)
  uniqx[which.max(tabulate(match(x, uniqx)))]
}
mode(A)
median(A)
summary(A)

B= D$Precipitation....
B
mode(B)
mean(B)
median(B)
summary(B)
