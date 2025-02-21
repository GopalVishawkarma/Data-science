# Practical - 6
data <- data.frame(
  spade = 402,
  diamond = 358,
  club = 273,
  heart = 467
)
View(data)

result <- chisq.test(data)
result

if (result$p.value > 0.05) {
  print("Null hypothesis is Accepted")
} else {
  print("Null hypothesis is Rejected")
}

# Practical - 7
data <- data.frame(
  finance = c(12,7),
  sales = c(38,19),
  hr = c(5,3),
  technology = c(8,1)
)
  
View(data)

result <- chisq.test(data)
result

if (result$p.value > 0.05) {
  print("Null hypothesis is Accepted")
} else {
  print("Null hypothesis is Rejected")
}

