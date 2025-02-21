input<-data.frame(
  X=c(0,1,2,3,4),
  F1=c(10,5,2,2,1),
  F2=c(1,2,14,2,1),
  F3=c(1,2,5,5,10)
)
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
mean1<-mean(rep(input$X,input$F1))
median1<-median(rep(input$X,input$F1))
mode1<-getmode(rep(input$X,input$F1))
sd1<-sd(rep(input$X,input$F1))
Pearsonfirst<-((mean1-mode1)/sd1)
Pearsonsecond<-(3*(mean1-median1)/sd1)
print("Pearson's first coefficients of skewness with x and f1 is : ")
print(Pearsonfirst)
print("Pearson's second coefficients of skewness with x and f1 is : ")
print(Pearsonsecond)

mean1<-mean(rep(input$X,input$F2))
median1<-median(rep(input$X,input$F2))
mode1<-getmode(rep(input$X,input$F2))
sd1<-sd(rep(input$X,input$F2))
Pearsonfirst<-((mean1-mode1)/sd1)
Pearsonsecond<-(3*(mean1-median1)/sd1)
print("Pearson's first coefficients of skewness with x and f2 is : ")
print(Pearsonfirst)
print("Pearson's second coefficients of skewness with x and f2 is : ")
print(Pearsonsecond)

mean1<-mean(rep(input$X,input$F3))
median1<-median(rep(input$X,input$F3))
mode1<-getmode(rep(input$X,input$F3))
sd1<-sd(rep(input$X,input$F3))
Pearsonfirst<-((mean1-mode1)/sd1)
Pearsonsecond<-(3*(mean1-median1)/sd1)
print("Pearson's first coefficients of skewness with x and f3 is : ")
print(Pearsonfirst)
print("Pearson's second coefficients of skewness with x and f3 is : ")
print(Pearsonsecond)