# cds490
cds 490 project
Data:
For this project, I'm using a dataset called "Maryland Counties Socioeconomic Characteristics." 
It contains various demographic information about the 24 counties and Maryland. 
The most important variables for this project are: Population, Median Household Income, White Alone, and Black Alone. 
The variables White Alone and Black Alone hold the amount of white and black people in each county respectively. 


Methods:
With the help of R Studio, I imported the data in the form of .csv files. I got the data from online census surveys in a format that can interact with in the R studio program. I used functions inside R studio to create multiple graphs to compare the population of Black people against the total population of each county.

Hypothesis:
My current hypothesis is that race has a relationship with poverty. I expect to find counties with the highest Black population to have the lowest median income on average, and maybe other variables such as unemployment or homelessness. With this project I hope to demonstrate the results of systemic racism.

Results:
It seems that counties with the lowest population are the most likely to have to have the lowest median income and the highest poverty rates. Montgomery being significantly different than the others, having a high total population, a low black population, and a very high median income. In addition, counties like Balitmore and Prince George have high total populations and high populations of black people, but the median income is much lower than Montgomery and other counties with similar total populations. 

Visualization:
The visualization is a 3D scatter plot made using the plotly package. The y-axis represents the counties of Maryland. The z-axis represents the percentage of families in poverty, and the x-axis is the population of the black people in each county. Finally, the color of each point represents the Total population of each county.

Conclusion: From the results, one can glean that counties with the lowest populations struggle with poverty the most, but that doesn't entirely remove race from the conversation. As shown in the visualization, Baltimore county has an extremely high population of black people and has the highest poverty rate in the out of all the counties. Other counties with higher black populations also tend to have higher poverty rates. It's apparent that race isn't the only contributing factor to poverty, but it is a significant factor. Poverty is a complex issue, but race is an important factor as to why many people are driven into poverty. 
