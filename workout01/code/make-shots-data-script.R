
## ---------------------------
##
## title: make-shot-data
##
## ---------------------------
## description:This file import the data of 4 players,and export text files of the summary 
## of player repectively. Beside, a table of 4 players is created and it's summery 
## text file is also exported.
##
## inputs:import csv files of 4 players by read.csv.
##   
## outpt: 1 csv file of 4 players, and 5 summary text files of 4 players.
## ---------------------------


curry <- read.csv("/Users/shixinli/Desktop/ucb/stat133/workout/workout01/data/stephen-curry.csv", stringsAsFactors = FALSE)
green <- read.csv("/Users/shixinli/Desktop/ucb/stat133/workout/workout01/data/draymond-green.csv",stringsAsFactors = FALSE)
iguodala <- read.csv("/Users/shixinli/Desktop/ucb/stat133/workout/workout01/data/andre-iguodala.csv",stringsAsFactors = FALSE)
durant <- read.csv("/Users/shixinli/Desktop/ucb/stat133/workout/workout01/data/kevin-durant.csv",stringsAsFactors = FALSE)
thompson <- read.csv("/Users/shixinli/Desktop/ucb/stat133/workout/workout01/data/klay-thompson.csv",stringsAsFactors = FALSE)

curry$shot_made_flag[curry$shot_made_flag == 'n'] <- "shot_no"
curry$shot_made_flag[curry$shot_made_flag == 'y'] <- "shot_yes"

green$shot_made_flag[green$shot_made_flag == 'n'] <- "shot_no"
green$shot_made_flag[green$shot_made_flag == 'y'] <- "shot_yes"

iguodala$shot_made_flag[iguodala$shot_made_flag == 'n'] <- "shot_no"
iguodala$shot_made_flag[iguodala$shot_made_flag == 'y'] <- "shot_yes"

durant$shot_made_flag[durant$shot_made_flag == 'n'] <- "shot_no"
durant$shot_made_flag[durant$shot_made_flag == 'y'] <- "shot_yes"

thompson$shot_made_flag[thompson$shot_made_flag == 'n'] <- "shot_no"
thompson$shot_made_flag[thompson$shot_made_flag == 'y'] <- "shot_yes"


curry$minutes <- curry$period*12-curry$minutes_remaining
green$minutes <- green$period*12-green$minutes_remaining
iguodala$minutes <- iguodala$period*12-iguodala$minutes_remaining
durant$minutes <- durant$period*12-durant$minutes_remaining
thompson$minutes <- thompson$period*12-thompson$minutes_remaining



sink("/Users/shixinli/Desktop/ucb/stat133/workout/workout01/output/stephen-curry-summary.txt")
summary(curry)
sink()

sink("/Users/shixinli/Desktop/ucb/stat133/workout/workout01/output/andre-iguodala-summary.txt")
summary(iguodala)
sink()

sink("/Users/shixinli/Desktop/ucb/stat133/workout/workout01/output/draymond-green-summary.txt")
summary(green)
sink()

sink("/Users/shixinli/Desktop/ucb/stat133/workout/workout01/output/kevin-durant-summary.txt")
summary(durant)
sink()

sink("/Users/shixinli/Desktop/ucb/stat133/workout/workout01/output/klay-thompson-summary.txt")
summary(thompson)
sink()

rebind_file <- rbind(curry,iguodala,green,durant,thompson)
write.table(rebind_file,file = "/Users/shixinli/Desktop/ucb/stat133/workout/workout01/data/shots-data.csv")

sink("/Users/shixinli/Desktop/ucb/stat133/workout/workout01/output/shots-data-summary.txt")
summary(rebind_file)
sink()

