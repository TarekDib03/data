install.packages("ElemStatLearn")
library(ElemStatLearn)
data(bone)
plot(bone$age,bone$spnbmd,pch=19,col=((bone$gender=="male")+1))

data(marketing)
plot(bone$age,bone$spnbmd,pch=19,col=((bone$gender=="male")+1))
boxplot(marketing$Income ~ marketing$Marital,col="grey",xaxt="n",ylab="Income",xlab="")
axis(side=1,at=1:5,labels=c("Married","Living together/not married","Divorced or separated",
                            "Widowed","Nevermarried"),las=2)

library(datasets)
data(iris)
irisSubset = iris[,1:4]
d <- dist(irisSubset)
hClustering = hclust(d) 
plot(hClustering)