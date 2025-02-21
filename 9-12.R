# Question 9
height <- c(70,63,72,60,66,70,74,65,62,67,65,68)
weight <- c(155,150,180,135,156,168,178,160,132,145,139,152)

# A) H is independent Variable
# linear regression
line_reg1 <- lm(weight ~ height)
line_reg1
print(paste("weight = ",line_reg1$coefficients[1],"+",
            line_reg1$coefficients[2],"* Height"))
# B) H is dependent Variable
line_reg2 <- lm(height ~ weight)
line_reg2
print(paste("Height = ",line_reg2$coefficients[1],"+",
            line_reg2$coefficients[2],"* Weight"))

# Question 10 or Practical 12
year <- c(2000:2005)
Total_value <- c(51246, 53659,53115,59364, 61383, 62958)
reg_line <- lm(Total_value ~ year)
reg_line
plot(year,Total_value,
     main = "Total Agriculture export",
     xlab = "Year",
     ylab = "Total value",
     cex = 1.3,
     pch = 16,
     abline(reg_line, col = "red"),
     xlim = c(1999,2006),
     ylim = c(50000,65000),
     col = "blue")

predict(reg_line,data.frame(year = c(2006)))


# Practical 11
# Question 9
x <- c(6,5,8,8,7,6,10,4,9,7)
y <- c(8,7,7,10,5,10,8,6,8,6)

# A) Y on X
# linear regression
line_reg1 <- lm(y ~ x)
line_reg1
print(paste("weight = ",line_reg1$coefficients[1],"+",
            line_reg1$coefficients[2],"* Height"))
# B) x on Y
line_reg2 <- lm(x ~ y)
line_reg2
print(paste("Height = ",line_reg2$coefficients[1],"+",
            line_reg2$coefficients[2],"* Weight"))

