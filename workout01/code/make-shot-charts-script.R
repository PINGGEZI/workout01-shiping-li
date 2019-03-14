
## ---------------------------
##
## title: make-shot-charts
##
## ---------------------------
## description:
##
## input:
##   
## outpt:
## ---------------------------
library(ggplot2)
library(jpeg)
library(png)
library(grid)


curry <- read.csv("/Users/shixinli/Desktop/ucb/stat133/workout/workout01/data/stephen-curry.csv", stringsAsFactors = FALSE)
green <- read.csv("/Users/shixinli/Desktop/ucb/stat133/workout/workout01/data/draymond-green.csv",stringsAsFactors = FALSE)
iguodala <- read.csv("/Users/shixinli/Desktop/ucb/stat133/workout/workout01/data/andre-iguodala.csv",stringsAsFactors = FALSE)
durant <- read.csv("/Users/shixinli/Desktop/ucb/stat133/workout/workout01/data/kevin-durant.csv",stringsAsFactors = FALSE)
thompson <- read.csv("/Users/shixinli/Desktop/ucb/stat133/workout/workout01/data/klay-thompson.csv",stringsAsFactors = FALSE)

cy_scatterplot <- ggplot(data = curry) + geom_point(aes(x = x, y = y, color = shot_made_flag))
cy_scatterplot


court_file <- "/Users/shixinli/Desktop/ucb/stat133/workout/workout01/images/nba-court.jpg"
# create raste object

court_image <- rasterGrob(readJPEG(court_file), width = unit(1, "npc"), height = unit(1, "npc"))
thompson_shot_chart <- ggplot(data = thompson) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') + theme_minimal()

durant_shot_chart <- ggplot(data = durant) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: kevin durant (2016 season)') + theme_minimal()
 
iguodala_shot_chart <- ggplot(data = durant) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: andre iguodala (2016 season)') + theme_minimal()

green_shot_chart <- ggplot(data = durant) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: draymond green (2016 season)') + theme_minimal()

curry_shot_chart <- ggplot(data = durant) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: stephen curry (2016 season)') + theme_minimal()


