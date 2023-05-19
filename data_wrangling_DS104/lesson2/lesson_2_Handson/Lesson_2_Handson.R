#The average age of those who use each type of browser. 

airbnb1 <- aggregate(age~first_browser, airbnb_test_users, mean)

#The total signup_flow for each device. 

airbnb2 <- aggregate(signup_flow~first_device_type, airbnb_test_users, sum)

#Adding country information to the airbnb_test_users

airbnb_with_countries <- merge(airbnb_test_users, airbnb_sample_submission, by=c("id"))

#Adding additional users from new dataset airbnb_users

#airbnb_both <- rbind(airbnb_with_countries, airbnb_users)
#Got an error 
#Finding the error
colnames(airbnb_with_countries)
colnames(airbnb_users)
#The last column is called country_destination in airbnb_users, so changing the name of the first so it matches the last
#I can see column 16 needs to both be called the same thing. "country_destination" is more clear

names(airbnb_with_countries)[names(airbnb_with_countries) == 'country'] <-'country_destination'

#Trying again
airbnb_both <- rbind(airbnb_with_countries, airbnb_users)

#Checking how they looked before the merge to make sure it's in both
head(airbnb_test_users,5)
tail(airbnb_test_users,5)
#Now comparing to how it looks now
tail(airbnb_both, 5)

#Not totally sure I did this correct. ... the tails look different when I assume the tail of airbnb_both (my new combined data) should be the same as the airbnb_test_users. It's not... 




