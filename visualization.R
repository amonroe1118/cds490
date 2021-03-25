library(dplyr)
library(ggplot2)
us_map <- map_data("state")
head(us_map, 3)

maryland <- map_data('county', region = 'maryland')

data <- data.frame(murder=USArrests$Murder,
                   state=tolower(rownames(USArrests)))
map <- map_data('county', region = 'maryland')
k <- ggplot(data,aes(fill=murder))

k + geom_map(aes(map_id = state), map = map)+
  expand_limits(x = map$long, y=map$lat)

###########################################################

maryland <- map_data('county', region = 'maryland')

data <- data.frame(black=ml_count$Black.Alone,
                   state=tolower(rownames(ml_count)))
map <- map_data('county', region = 'maryland')
k <- ggplot(data,aes(fill=black))

k + geom_map(aes(map_id = state), map = map)+
  expand_limits(x = map$long, y=map$lat)