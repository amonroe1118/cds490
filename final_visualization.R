#INNIT#############################
#ml_count <- read.csv("Maryland_Counties_Socioeconomic_Characteristics.csv")
install.packages(plotly)
library(plotly)
###################################
fig <- plot_ly(
  x=ml_count$Black.Alone,
  y=ml_count$Jurisdictions,
  z=ml_count$Percent.Families.in.Poverty,
  type="scatter3d",
  mode='markers',
  marker = list(
    color = ~ml_count$Total.Population,
    colorscale = c('#FFE1A1', '#683531'),
    showscale = TRUE))
fig <- fig %>% add_markers()
fig <- fig %>% layout(scene = list(xaxis = list(title = 'Black Population'),
                                   yaxis = list(title = ''),
                                   zaxis = list(title = 'Percentage of Families in Poverty')),
                      annotations = list(
                        x = 1.13,
                        y = 1.05,
                        text = '',
                        xref = '',
                        yref = '',
                        showarrow = FALSE
                      ))
fig
