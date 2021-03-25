#Plot of populations
ggplot(ml_count)+
  geom_point(
    mapping = aes(
      x = Black.Alone,
      y = Total.Population, color=Jurisdictions))

#Plot of median income by county
ggplot(ml_count)+
  geom_point(
    mapping = aes(
      x = Black.Alone,
      y = Total.Population, color = Median.Household.Income....)
  ) +
  facet_wrap(~ `Jurisdictions`)
####
ggplot(ml_count)+
  geom_point(
    mapping = aes(
      x = log10(Black.Alone),
      y = log10(Median.Household.Income....))
  ) +
  facet_wrap(~ `Jurisdictions`)

