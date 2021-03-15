##Andre Monroe Week 3


## Here a few ways I can present my data
## This type of visualization is helpful in helping me determine what specific counties will be most useful. 

ggplot(mary_data)+
  geom_point(
    mapping = aes(
      x = log10(`Black Alone`),
      y = log10(`Total Population`))) +
  facet_wrap(~ `Jurisdictions`)

ggplot(mary_data, aes(log10(`Total Population`), log10(`White Alone`), color = `Jurisdictions`))+
  geom_point()

ggplot(mary_data, aes(log10(`Total Population`), log10(`White Alone`), color = `Jurisdictions`))+
  geom_point()

## I can take the individual counties with the highest black populations and run various tests on them. For example, I can see what the poverty levels on are in each county with sufficent Black populations, or just compare median incomes between different counties. 
## I believe that this could really help with my project in the next phase and I'm in the process of gathering more data.
## I would consider gettting data from other states to see if the patterns hold true.
## I'm making sure to check all my data to make sure that's accurate, comparing my data to other datasets should also assist in this. 

## I'm interested to hear your thoughts on my prototype so far, things I can do to improve it and things you might like to see. 
## I'm very sorry this is taking so long, but hopefully I'll be caught up in the next week or so. 