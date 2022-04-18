### Name:
# Kaleigh White
### Date:
#  16 March 2022

# This code is written to create plots for my comp.

rm(list = ls()) # clear out the variables from memory to make a clean execution of the code.

# If you want to remove all previous plots and clear the console, run the following two lines.
graphics.off() # clear out all plots from previous work.

cat("\014") # clear the console

library(tidyverse)
library(readr)

# pick the data file comp_data/data/disney release/disney searches v2.csv
disFile <- file.choose()
# load the datafile as a CSV file
dat <- read.table(disFile, header = TRUE, sep = ",")
# view the dataset
View(dat)

# make a plot to compare searches for "album," "soundtrack," "merchandise," and "musical" before and after the disney+ release
ggplot(data = dat) + 
  geom_point(aes(x = Day, y = hamilton.album, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.album, group = 1), color = "blue") +
  geom_point(aes(x = Day, y = hamilton.soundtrack, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.soundtrack, group = 1), color = "red") +
  geom_point(aes(x = Day, y = hamilton.merchandise, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.merchandise, group = 1), color = "yellow") +
  geom_point(aes(x = Day, y = hamilton.musical, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.musical, group = 1), color = "green") +
  geom_vline(xintercept = "07-03", color = "black") +
  labs(y = "Search activity", x = "Time", title = "Search activity before and after the Disney+ release of 'Hamilton'", subtitle = "June 5th, 2020 - July 31st, 2020") +
  theme(axis.text.x = element_text(angle = 90))

# pick the data file comp_data/data/album release/album searches v2.csv
albFile <- file.choose()
# load the datafile as a CSV file
dat2 <- read.table(albFile, header = TRUE, sep = ",")
# view the dataset
View(dat2)

# make a plot to compare searches for hamilton "album," "soundtrack," "merchandise," and "musical" before and after the album release
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
  geom_vline(xintercept = "10-16", color = "black") +
  labs(y = "Search activity", x = "Time", title = "Search activity before the digital release of the official album/after the release of the physical album", subtitle = "August 28th, 2015 - November 13th, 2015") +
  theme(axis.text.x = element_text(angle = 90))

# pick the data file comp_data/data/app release/app searches v2.csv
appFile <- file.choose()
# load the datafile as a CSV file
dat3 <- read.table(appFile, header = TRUE, sep = ",")
# view the dataset
View(dat3)

# make a plot to compare searches for hamilton "lottery," "tour," and "ham4ham" before and after the app release
ggplot(data = dat3) + 
  geom_point(aes(x = Day, y = hamilton.lottery, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.lottery, group = 1), color = "purple") +
  geom_point(aes(x = Day, y = hamilton.tour, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.tour, group = 1), color = "orange") +
  geom_point(aes(x = Day, y = ham4ham, group = 1)) +
  geom_line(aes(x = Day, y = ham4ham, group = 1), color = "magenta") +
  geom_point(aes(x = Day, y = hamilton.musical, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.musical, group = 1), color = "green") +
  geom_vline(xintercept = "08-01", color = "black") +
  labs(y = "Search activity", x = "Time", title = "Search activity before and after the release of the Hamilton app", subtitle = "June 20th, 2017 - September 12th, 2017") +
  theme(axis.text.x = element_text(angle = 90))

# pick the data file comp_data/data/ham4ham perfs/ham4ham searches v3.csv
ham4File <- file.choose()
# load the datafile as a CSV file
dat4 <- read.table(ham4File, header = TRUE, sep = ",")
# view the dataset
View(dat4)

# make a plot to compare searches for hamilton "lottery," "musical," "merchandise," and "ham4ham" from the first lottery performance to the 30th
ggplot(data = dat4) + 
  geom_point(aes(x = Day, y = hamilton.lottery, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.lottery, group = 1), color = "purple") +
  geom_point(aes(x = Day, y = hamilton.musical, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.musical, group = 1), color = "green") +
  geom_point(aes(x = Day, y = hamilton.merchandise, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.merchandise, group = 1), color = "yellow") +
  geom_point(aes(x = Day, y = ham4ham, group = 1)) +
  geom_line(aes(x = Day, y = ham4ham, group = 1), color = "magenta") +
  labs(y = "Search activity", x = "Time", title = "Search activity from the start of the Ham4Ham performances to the 30th performance", subtitle = "July 13th, 2015 - September 2nd, 2015") +
  theme(axis.text.x = element_text(angle = 90))

# pick the data file comp_data/data/opening searches v1.csv
openFile <- file.choose()
# load the datafile as a CSV file
dat5 <- read.table(openFile, header = TRUE, sep = ",")
# view the dataset
View(dat5)

# make a plot to compare searches for hamilton "album," "soundtrack," "merchandise," and "musical" before and after previews began
ggplot(data = dat5) + 
  geom_point(aes(x = Day, y = hamilton.album, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.album, group = 1), color = "blue") +
  geom_point(aes(x = Day, y = hamilton.soundtrack, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.soundtrack, group = 1), color = "red") +
  geom_point(aes(x = Day, y = hamilton.merchandise, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.merchandise, group = 1), color = "yellow") +
  geom_point(aes(x = Day, y = hamilton.musical, group = 1)) +
  geom_line(aes(x = Day, y = hamilton.musical, group = 1), color = "green") +
  geom_vline(xintercept = "07-13", color = "black") +
  labs(y = "Search activity", x = "Time", title = "Search activity before and after previews began", subtitle = "June 1st, 2015 - August 24th, 2015") +
  theme(axis.text.x = element_text(angle = 90))


