# a) 12, 6, 7, 3, 15, 10, 18, 5
# b) 9, 3, 8, 8, 9, 8, 9, 18.
input<-data.frame(
  X1=c(12, 6, 7, 3, 15, 10, 18, 5),
  X2=c(9, 3, 8, 8, 9, 8, 9, 18)
)
print("Standard Deviaton of X1 and X2 are : ")
sd(input$X1)
sd(input$X2)
print("Variance of X1 and X2 are : ")
var(input$X1)
var(input$X2)