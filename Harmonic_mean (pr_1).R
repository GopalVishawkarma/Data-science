# A car travels 25 miles at 25 miles per hour (mi/h), 
# 25 miles at 50 mph, and 25 miles at 75 mph.
# Write a program to find the arithmetic mean of the three velocities 
# and the harmonic mean of the three velocities.
# Which is correct?
  
dist <- c(25,25,25)
speed <- c(25,50,75)

my_data <- rep(speed,dist)

# To find Arithmatic mean
arithmetic_mean_speed <- mean(my_data)
arithmetic_mean_speed

# call library
library(psych)

# to find harmonic mean
harmonic_mean_speed <- harmonic.mean(my_data)
harmonic_mean_speed

print("Since speed have fraction unit measure therefore 
      Harmonic mean is correct mean")
 