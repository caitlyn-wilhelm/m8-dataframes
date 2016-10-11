# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks have scored in each game this season (google "Seahawks")
Seahawks.for <- c(12,3,37,27)

# Create a vector of the number of points the Seahwaks have allowed to be scored against them in each game this season
Seahawks.against <- c(10,9,18,17)

# Combine your two vectors into a dataframe
Seahawk.season <- data.frame(Seahawks.for,Seahawks.against)

# Create a new column "diff" that is the difference in points
Seahawk.season$diff <- (Seahawks.for - Seahawks.against) 

# Create a new column "won" which is TRUE if the Seahawks wom
Seahawk.season$won <- Seahawk.season$diff > 0


# Create a vector of the opponents
opponents <- c("Mami","Los Angeles","San Francisco","New York")

# Assign your dataframe rownames of their opponents
rownames(Seahawk.season) <- opponents
