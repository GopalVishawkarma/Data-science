library(data.table)

salarydata<-data.frame(
  salaries_low=c(25000,26000,27000,28000,29000,30000,31000),
  salaries_high=c(25999,26999,27999,28999,29999,30999,32999),
  Numbers=c(8,10,16,14,10,5,2)
)
print(salarydata)
salarydata <- as.data.table(salarydata)
salarydata <-salarydata[,cumNumbers:=cumsum(Numbers)]
salarydata

# Compute total count (N)
total_count <- sum(salarydata$Numbers)

# Find the median group using data.table syntax
median_group <- salarydata[
  (cumNumbers - Numbers) <= (total_count / 2) & 
    cumNumbers >= (total_count / 2)
]

# Print or use these variables as needed
print(median_group)

# Extract relevant values
l1 <- median_group$salaries_low
l2 <- median_group$salaries_high
f  <- median_group$Numbers
pcf <- median_group$cumNumbers - median_group$Numbers
n  <- sum(salarydata$Numbers)

median<-l1+(((n/2)-pcf)/f*(l2-l1))
median
