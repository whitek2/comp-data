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

library(tidyverse)
library(readr)

# pick the data file
disFile <- file.choose()
# load the datafile as a CSV file
dat <- read.table(disFile, header = TRUE, sep = ",")
# view the dataset
View(dat)

ggplot(data = dat) + 
  geom_point(aes(x = Day, y = hamilton.album, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.album, group = 1), color = "blue") +
  geom_point(aes(x = Day, y = hamilton.soundtrack, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.soundtrack, group = 1), color = "red") +
  geom_point(aes(x = Day, y = hamilton.merchandise, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.merchandise, group = 1), color = "yellow") +
  geom_point(aes(x = Day, y = hamilton.musical, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.musical, group = 1), color = "green") +
  geom_vline(xintercept = "07-03", color = "black")

# pick the data file
digiFile <- file.choose()
# load the datafile as a CSV file
dat2 <- read.table(digiFile, header = TRUE, sep = ",")
# view the dataset
View(dat2)

ggplot(data = dat2) + 
  geom_point(aes(x = Day, y = hamilton.album, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.album, group = 1), color = "blue") +
  geom_point(aes(x = Day, y = hamilton.soundtrack, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.soundtrack, group = 1), color = "red") +
  geom_point(aes(x = Day, y = hamilton.merchandise, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.merchandise, group = 1), color = "yellow") +
  geom_point(aes(x = Day, y = hamilton.musical, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.musical, group = 1), color = "green") +
  geom_vline(xintercept = "09-25", color = "black") +
  geom_vline(xintercept = "10-16", color = "black")

ggplot(data = dat,
       aes(x = Date, y = hamilton.album, group = 1)) + 
  geom_point() +
  geom_line()

# Plotting some data now that Hawaii and Alaska are Gonzo

ggplot(data = dat_measles_rate_lessTwoStates,
       mapping = aes(x = year, y = rate, color = year)) +
  geom_point() +
  geom_vline(xintercept = 1963, color = "red") +
  labs(y = "Positivity Rate Over Time")






