### Name:
# Kaleigh White
### Date:
#  16 March 2022



# The following code is copy/pasted from an assignment I did for CMPSC 301 at Allegheny College in the fall of 2021.
# This comment will be removed once I write relevant code; for now, this is here to take up space.



rm(list = ls()) # clear out the variables from memory to make a clean execution of the code.

# If you want to remove all previous plots and clear the console, run the following two lines.
graphics.off() # clear out all plots from previous work.

cat("\014") # clear the console


# you will need to install the dslabs library once.
# install.packages("dslabs")
library(tidyverse)

# view the data set.
View(us_contagious_diseases)

# Add your code after this line according to the steps of the assignment sheet.

# Creating a dat variable and a measles variable
dat <- us_contagious_diseases
dat_measles <- dat %>% filter(disease == "Measles")
View(dat_measles)

# Adding a column to the measles dat query using the "mutate" function
dat_measles_rate <- mutate(dat_measles, rate = ((count * 100000 / population) * (weeks_reporting / 52)))
View(dat_measles_rate)

# New dataset to remove Alaska and Hawaii
dat_measles_rate_lessTwoStates <- dat_measles_rate <- filter(dat_measles_rate, state != "Alaska", state != "Hawaii")
View(dat_measles_rate_lessTwoStates)

# Plotting some data now that Hawaii and Alaska are Gonzo

ggplot(data = dat_measles_rate_lessTwoStates,
       mapping = aes(x = year, y = rate, color = year)) +
  geom_point() +
  geom_vline(xintercept = 1963, color = "red") +
  labs(y = "Positivity Rate Over Time")

# New dataset for just California because that's what the instructions are asking me to do
dat_caliFocus <- dat_measles_rate_lessTwoStates <- filter(dat_measles_rate_lessTwoStates, state == "California")
View(dat_caliFocus)

ggplot(data = dat_measles_rate_lessTwoStates,
       mapping = aes(x = year, y = rate, color = year)) +
  geom_point() +
  geom_vline(xintercept = 1963, color = "red") +
  labs(y = "Positivity Rate Over Time")

