title: 'required variables for data visualization'
description: 'This file contains all the R code necessary to complete the data preparation stage'
input:'5 raw data sets (csv files)'
output: 'a main global table'

Iguodala <- read_csv("./data/andre-iguodala.csv")
Green <- read_csv("../data/draymond-green.csv")
Durant <- read_csv("../data/kevin-durant.csv")
Thompson <- read_csv("../data/klay-thompson.csv")
Curry <- read_csv("../data/stephen-curry.csv")

# add a column 'name' to each imported data frame
Iguodala$name <- c(rep("Iguodala", nrow(Iguodala)))
Green$name <- c(rep("Green", nrow(Green)))
Durant$name <- c(rep("Durant", nrow(Durant)))
Thompson$name <- c(rep("Thompson", nrow(Thompson)))
Curry$name <- c(rep("Curry", nrow(Curry)))

# change y and n to shot_yes and shot_no
Iguodala$shot_made_flag[Iguodala$shot_made_flag == "n"] <- "shot_no"
Iguodala$shot_made_flag[Iguodala$shot_made_flag == "y"] <- "shot_yes"
Green$shot_made_flag[Green$shot_made_flag == "n"] <- "shot_no"
Green$shot_made_flag[Green$shot_made_flag == "y"] <- "shot_yes"
Durant$shot_made_flag[Durant$shot_made_flag == "n"] <- "shot_no"
Durant$shot_made_flag[Durant$shot_made_flag == "y"] <- "shot_yes"
Thompson$shot_made_flag[Thompson$shot_made_flag == "n"] <- "shot_no"
Thompson$shot_made_flag[Thompson$shot_made_flag == "y"] <- "shot_yes"
Curry$shot_made_flag[Curry$shot_made_flag == "n"] <- "shot_no"
Curry$shot_made_flag[Curry$shot_made_flag == "y"] <- "shot_yes"

#adding the column minute, which says howm any minutes have passed in the game already
Iguodala$minute <- (12 * Iguodala$period) - Iguodala$minutes_remaining 
Green$minute <- (12 * Green$period) - Green$minutes_remaining 
Durant$minute <- (12 * Durant$period) - Durant$minutes_remaining 
Thompson$minute <- (12 * Thompson$period) - Thompson$minutes_remaining
Curry$minute <- (12 * Curry$period) - Curry$minutes_remaining 

# sink() the summary of each imported data frame
sink('./output/andre-iguodala-summary.txt')  #1
summary(Iguodala)
sink()
sink('draymond-green-summary.txt')  #2
summary(Green)
sink()
sink('kevin-durant-summary.txt')  #3
summary(Durant)
sink()
sink('tristan-thompson-summary.txt')  #4
summary(Thompson)
sink()
sink('stephen-curry-summary.txt')  #5
summary(Curry)
sink()

# use rbind(), row binding function, to stack the tables into one
df_all <- rbind(Iguodala, Green, Durant, Thompson, Curry)

#export combined table as a csv file
write_csv(df_all, '/Users/mallikakolar/Documents/Berkeley Year 4/Spring 2019/stat 133/homework/workout01/data/shots-data.csv')

#sink summary of combined data
sink('shots-data-summary.txt')
summary(df_all)
sink()

