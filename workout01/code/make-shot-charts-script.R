title: 'shots charts'
description: 'This file contains all the R code necessary to complete the shots charts and graphics'
input:'the data tables for each player'
output: 'charts depicting where players shoot their shots from'

library(jpeg)
library(grid)

#download the file
court_file <- "../images/nba-court.jpg"

# create raste object
court_image <- rasterGrob( readJPEG(court_file), width = unit(1, "npc"), height = unit(1, "npc"))
       
# create shot charts of each player and save as pdf
Iguodala_shot_chart <- ggplot(data = Iguodala) + annotation_custom(court_image, -250, 250, -50, 420) + 
  geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2016 season)') + theme_minimal() 
ggsave(plot = Iguodala_shot_chart, width = 6.5, height = 5, 
       filename = '/Users/mallikakolar/Documents/Berkeley Year 4/Spring 2019/stat 133/homework/workout01/images/andre-iguodala-shot-chart.pdf') 

Green_shot_chart <- ggplot(data = Green) + annotation_custom(court_image, -250, 250, -50, 420) + 
  geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond Green (2016 season)') + theme_minimal()
ggsave(plot = Green_shot_chart, width = 6.5, height = 5, 
       filename = '/Users/mallikakolar/Documents/Berkeley Year 4/Spring 2019/stat 133/homework/workout01/images/draymond-green-shot-chart.pdf') 

Durant_shot_chart <- ggplot(data = Durant) + annotation_custom(court_image, -250, 250, -50, 420) + 
  geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Kevin Durant (2016 season)') + theme_minimal()
ggsave(plot = Durant_shot_chart, width = 6.5, height = 5, 
       filename = '/Users/mallikakolar/Documents/Berkeley Year 4/Spring 2019/stat 133/homework/workout01/images/kevin-durant-shot-chart.pdf') 

Thompson_shot_chart <- ggplot(data = Thompson) + annotation_custom(court_image, -250, 250, -50, 420) + 
  geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') + theme_minimal()
ggsave(plot = Thompson_shot_chart, width = 6.5, height = 5, 
       filename = '/Users/mallikakolar/Documents/Berkeley Year 4/Spring 2019/stat 133/homework/workout01/images/klay-thompson-shot-chart.pdf') 

Curry_shot_chart <- ggplot(data = Curry) + annotation_custom(court_image, -250, 250, -50, 420) + 
  geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Stephen Curry (2016 season)') + theme_minimal()
ggsave(plot = Curry_shot_chart, width = 6.5, height = 5, 
       filename = '/Users/mallikakolar/Documents/Berkeley Year 4/Spring 2019/stat 133/homework/workout01/images/stephen-curry-shot-chart.pdf')

Shot_chart <- ggplot(data = df_all) + annotation_custom(court_image, -250, 250, -50, 420) + 
  geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) + 
  ggtitle('Shot Charts: GSW (2016 season)') + theme_minimal() + facet_wrap(~name)
ggsave(plot = Shot_chart, width = 8, height = 7, filename = '/Users/mallikakolar/Documents/Berkeley Year 4/Spring 2019/stat 133/homework/workout01/images/gsw-shot-charts.pdf') 
ggsave(plot = Shot_chart, width = 8, height = 7, filename = '/Users/mallikakolar/Documents/Berkeley Year 4/Spring 2019/stat 133/homework/workout01/images/gsw-shot-charts.png')


