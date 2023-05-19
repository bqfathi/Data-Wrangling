# Load in libraries

library("dplyr")

# Recoding Activity into a new variable

unique(Eating_Habits$Activity)
# Eating chocolate is a 0 and eating anything else is a 1. 12 instances total
Eating_Habits$JunkFood <- NA
Eating_Habits$JunkFood[Eating_Habits$Activity=='Eating fruit'] <- 0
Eating_Habits$JunkFood[Eating_Habits$Activity=='Eating raw vegetables'] <- 0
Eating_Habits$JunkFood[Eating_Habits$Activity=='Eating candy, chocolate bars'] <- 1
Eating_Habits$JunkFood[Eating_Habits$Activity=='Eating potato chips, crisps'] <- 0
Eating_Habits$JunkFood[Eating_Habits$Activity=='Eating french fries'] <- 0
Eating_Habits$JunkFood[Eating_Habits$Activity=='Eating hamburgers, hot dogs or sausages'] <- 0
Eating_Habits$JunkFood[Eating_Habits$Activity=='Eating peanuts'] <- 0
Eating_Habits$JunkFood[Eating_Habits$Activity=='Eating whole wheat or rye bread'] <- 0
Eating_Habits$JunkFood[Eating_Habits$Activity=='Drinking soft drinks, cola or other drinks with sugar'] <- 0
Eating_Habits$JunkFood[Eating_Habits$Activity=='Drinking coffee'] <- 0
Eating_Habits$JunkFood[Eating_Habits$Activity=='Drinking low fat milk'] <- 0
Eating_Habits$JunkFood[Eating_Habits$Activity=='Drinking whole milk'] <- 0

unique(Eating_Habits$JunkFood)

#Recoding sex from text to numbers in the same variable

Eating_Habits$Sex[Eating_Habits$Sex=='Males'] <- 0
Eating_Habits$Sex[Eating_Habits$Sex=='Females'] <- 1

#Dummy coding the frequency table
library("psych")

Eating_Habits1 <- dummy.code(Eating_Habits$Frequency)
Eating_Habits2 <- data.frame(Eating_Habits, Eating_Habits1)
