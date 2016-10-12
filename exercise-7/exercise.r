# Exercise 7: Husky Football 2015 Season
# Read in the Husky Football 2015 game data into a variable called `husky.games.2015`
husky.games.2015 <- read.csv('m8-dataframes/exercise-7/data/huskies_2015.csv')
# Create a vector of the teams that the Huskies played against during that season
# Call this vector `not.huskies`. You'll need to convert this column to a vector
not.huskies <- as.vector(husky.games.2015$opponents)
# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
husky.scores <- husky.games.2015$uw_score
date <- husky.games.2015$date
# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
rushing.yards <- husky.games.2015$rushing_yards
passing.yards <- husky.games.2015$passing_yards
# Create a variabled called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards <- rushing.yards + passing.yards
# What is the score of the game where the Huskies had the most combined yards?
most.combined.yards <- husky.games.2015[combined.yards == max(husky.games.2015$combined.yards)]
# Write a function `MostYardsScore` that takes in a dataframe parameter `games` and returns a descriptive sentence
# about the game that was played that had the most yards scored in it.
# Take note of the steps from above including the opposing team, score, and date the game was played
MostYardsScore <- function(game) {
    
    dates <- as.vector(game$date)
    opponents <- as.vector(game$opponents)
    team.scores <- game$uw_score
    
    rushing.yards <- game$rushing_yards
    passing.yards <- game$passing_yards
    combined.yards <- rushing.yards + passing.yards
    
    most.combined.yards <- max(combined.yards)
    date <- date[combined.yards == most.combined.yards]
    opponent <- opponents[combined.yards == most.combined.yards]
    score <- team.scores[combined.yards == most.combined.yards]
    
    paste( "The Husky game where there was the most yards was on", date, "against", opponent, "with a score of", score)
}
# What was the highest yardage game so far this season?
# Hint: Read in the dataset titled `huskies_2016.csv` and save it as a variable
husky.games.2016 <- read.csv('m8-dataframes/exercise-7/data/huskies_2016.csv')
MostYardsScore(husky.games.2016)
