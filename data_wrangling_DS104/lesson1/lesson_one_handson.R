library("dplyr")
library("tidyr")

#Adding Column "StorType" and setting it all to "Fake"

FakeNews$StoryType = "Fake"

#Removing the when column and put in new dataframe FakeNews1. Found this code online. 

FakeNews1 = subset(FakeNews, select = -c(when))

#Separating Website from the Domain. What separates them is the _/.

FakeNews3 <- separate(FakeNews1, url, c("Domain", "Website"), sep="_/")

#Putting them back together
FakeNews4 <- unite(FakeNews3, url, Domain, Website, sep="_/")

#Keeping the first ten rows
FakeNews6 <- FakeNews4 %>% slice(1:10)

