library(data.table)

salarydata<-data.frame(
  salaries_low=c(25000,26000,27000,28000,29000,30000,31000),
  salaries_high=c(25999,26999,27999,28999,29999,30999,32999),
  Numbers=c(8,10,16,14,10,5,2)
)
View(salarydata)

cal_data <- salarydata
# center value of group
cal_data$center_value = (cal_data$salaries_high+cal_data$salaries_low)/2
attach(cal_data)

calculation_data <- rep(center_value,Numbers)
calculation_data

# To find mean of salary
mean_salary <- mean(calculation_data)
mean_salary

# To find Standard deviation of salary
sd_salary <- sd(calculation_data)
sd_salary

# To find Variance of Salary
var_salary <- var(calculation_data)
var_salary