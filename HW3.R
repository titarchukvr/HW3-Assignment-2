library(RColorBrewer)
attach(iris)
#1a
hist(Sepal.Width)

#1c
mean(Sepal.Width)
median(Sepal.Width)

#1d
quantile(Sepal.Width,c(1-.27))

#1e
pairs(iris[,c(1:4)],pch=16)


#2a
attach(PlantGrowth)
head(PlantGrowth)
summary(PlantGrowth)

hist(weight,breaks=10)
?hist

#2b
boxplot(weight~group,col=2:4)

#2d
min(weight[group=="trt2"])
sort(weight[group=="trt1"])


#2e
tgroup <- table(group[weight>5.5])
colors <-  brewer.pal(3, "Purples")
barplot(tgroup, main = "Barplot for Plant Growth dataset", xlab = "Group", ylab = "Number of plants with the weight >5.5", col=colors)
?brewer.pal
