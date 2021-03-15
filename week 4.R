setwd("C:/Users/Owner/OneDrive - George Mason University/5. Spring 2021/CDS 490-DL1/CDS 490/datasets")
getwd()
med_income <- read.csv('Median Household Income by County.csv')
remove(mary_data)
remove(Maryland_Counties_Socioeconomic_Characteristics)
remove(montgomery)
remove(prince_george)
remove(med_income)
ml_count <- read.csv('Maryland_Counties_Socioeconomic_Characteristics.csv')
pg <- read.csv('prince george.csv')
mont <- read.csv('montgomery.csv')

install.packages("ggplot2")

library(ggplot2)



ggplot(ml_count)+
  geom_point(
    mapping = aes(
      x = Black.Alone,
      y = Total.Population)) +
  facet_wrap(~ Jurisdictions)

black <- max(ml_count$Black.Alone.pop)
prince_george <- subset(ml_count, black.pop == max(ml_count$Black.Alone))
View(prince_george)

df <- ml_count[,2]
print(df)

prince_george <- ml_count[,16]
print(prince_george)

montgomery <- ml_count[,15]

monty <- ml_count[2:3, 15]
print(monty)

monty <- data.frame(ml_count[15,1], ml_count[15,30], ml_count[15,35])
names(monty) <- c("name", "total_pop", "black_pop")
print(monty)
x1=monty$black_pop
y1=monty$total_pop
print(x1/y1)

ggplot(ml_count)+
  geom_point(
    mapping = aes(
      x = log10(Black.Alone),
      y = log10(Median.Household.Income....))
  ) +
  facet_wrap(~ `Jurisdictions`)
princey <- data.frame(ml_count[16,1], ml_count[16,30], ml_count[16,35])
names(princey) <- c("name", "total_pop", "black_pop")
x2 = princey$black_population
y2 = princey$total_pop
print(x2/y2)

#I used data analysis to determine which counties had the most significant difference in Black population. 
#Then I created dataframes for each county to better compare them together.
#In my first prototype, there were several errors in my code, due to importing .csv files as excel files.
#With the use of read.csv(), the data is more accurate.
#Working Hypothesis: Counties with higher populations of Black people are more prone to poverty and other issues. 