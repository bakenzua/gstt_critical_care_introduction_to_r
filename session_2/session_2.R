







#########################################################
#
#                      Session 2
#                     ===========
#
#  This file is intended to be saved as a local copy, 
#  edited, and used as an experimental space to follow, 
#  alongside taught content.
#
#
#########################################################











#########################################################
#.      Packages
#########################################################

# install the lubridate package
install.packages("lubridate")

# use lubridate functions with package:: prefix
lubridate::dmy("25/12/2024")

# date object
christmas_day <- lubridate::dmy("25/12/2024")

# import package
library(lubridate)

# with the library/package imported
# use lubridate package functions without packagename:: prefix
dmy("25/12/2024")











#########################################################
#               Tidyverse
#########################################################

install.packages("tidyverse")

sessionInfo()

library(tidyverse)
# loads tidyverse collection of packages

sessionInfo()


#########################################################
















#########################################################
#               Data types
#########################################################


###################################
# numeric vector
###################################
weights_kg <- c(75, 82, 115)

# the class or type of object
class(75)
class(weights_kg)

# vector of floats
precise_weights_kg <- c(70.12, 82.65, 115.9)

# floats as scientific notation
160000000
# [1] 1.6e+08


###################################
# logical vector
###################################

c(TRUE, TRUE, FALSE, FALSE)
weights_kg > 90


# the class or type of object
class(TRUE)




###################################
#       Strings
###################################

# class of strings
class("a")
class("Apple")

some_letters <- c("a", "b", "c")
# built in constants
letters
LETTERS

# index vectors
some_letters[1]
letters[c(1,2,3)]
LETTERS[c(1,2,3)]

patient_name <- "Barney"
patient_names <- c("Barney", "Anne", "Luigi", "Robert")

#indexing
patient_names[2]
patient_names[patient_names == "Barney"]

# tidyverse stringr package function
# note the "str_" prefix indicating function is from stringr package
stringr::str_to_upper(patient_name)

# import the stringr package
library(stringr)

str_to_upper(patient_name)
?str_to_upper


# changing or mutating strings
# to upper case
str_to_upper(patient_names)
# take only the first 3 letters
str_sub(patient_names, start = 1, end = 3)

# pattern matching
str_detect(patient_names, "i")
str_detect(patient_names, "rn")
?str_detect

# logical indexing of the patient_names vector
# with the logical vactor returned by str_detect
patient_names[str_detect(patient_names, "rn")]


str_detect(patient_names, "B")
str_starts(patient_names, "B")
patient_names[str_starts(patient_names, "B")]
















#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
# 
#                Mini Break
# 
#                Questions??
# 
#
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################











###################################
# Dates
###################################

# Today's date
Sys.Date()
# Date and time now
Sys.time()

# classes
class(Sys.Date())
class(Sys.time())

# base R date creation
christmas24 <- as.Date("2024-12-25")
christmas24
christmas24 <- strptime("2024-12-25", format = "%Y-%m-%d")
christmas24

class(christmas24)


# lubridate package
library(lubridate)

# create a date object
christmas24 <- lubridate::dmy("25/12/2024")
christmas24 <- dmy("25/12/2024")
christmas24

# parse differently formatted date strings
christmas24 <- dmy("25-12-2024")
christmas24
christmas24 <- dmy("25122024")
christmas24
christmas24 <- ymd("2024-12-25")
christmas24

class(christmas24)


new_year_eve_24 <- lubridate::dmy("31/12/2024")
new_year_eve_24

festive_dates <- c(
  lubridate::dmy("18/12/2024"),
  christmas24,
  new_year_eve_24
)

festive_dates

# dates are represented internally as number of days from epoch
festive_dates + 1



# operations

# base R and lubridate Dates are the same
as.Date("2024-12-25") == lubridate::dmy("25/12/2024")




# logical comparisons
new_year_eve_24 == christmas24
new_year_eve_24 > christmas24

# Get Date time components
year(christmas24)
month(christmas24)
day(festive_dates)


# Get Date time components
year(christmas24)
month(christmas24)

day(festive_dates)



# Durations
new_year_eve_24 - christmas24
difftime_xmas_to_nye <- new_year_eve_24 - christmas24

class(difftime_xmas_to_nye)

# confusingly lubridate has it's own version of difftime called duration

duration_xmas_to_nye <- as.duration(difftime_xmas_to_nye)


# can use durations against other dates

christmas24 - as.duration(duration_xmas_to_nye)

# Periods - more human readable durations
# can manipulate exiting date objects with periods
ymd("2024/12/31") + days(6)

ymd("2024/12/31") + months(1)
















#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
# 
#                Mini Break
# 
#                Questions??
# 
#
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################














###################################
#      Factors
###################################

# a vector of random ARDS categories
ards_category_data <- c("Mild", "Moderate", "Severe", "Severe",
                        "Severe", "Severe", "Severe", "Severe",
                        "Mild", "Mild", "Mild", "Mild", "Moderate",
                        "Severe", "Moderate", "Mild", "Moderate",  
                        "Severe", "Mild", "Mild" )

ards_category_data

# define categories as
# factor levels
ards_levels <- c("Mild", "Moderate", "Severe")

# create categorical data ie factor data
# with pre specified levels
ards_factor <- factor(ards_category_data, levels = ards_levels)
ards_factor

length(ards_factor)
levels(ards_factor)


# count number in each category
table(ards_factor)

?table


# forcats functions
forcats::fct_infreq(ards_factor)








###################################
#      Convert data types
###################################

# object types or classes
?class

as.Date("2024-12-25")

as.numeric("3")

as.character(3)

# Duration is a difftime object type in R
christmas24 - new_year_eve_24
# can convert to a numeric
as.numeric(christmas24 - new_year_eve_24)












#########################################################
#      Missing data
#########################################################

# vector of weights with a missing value
weights_kg <- c(70, 90, NA, 55, NA, 115)

# calculations
mean(weights_kg)
max(weights_kg)
sd(weights_kg)

# need to specify what to do with missing data
# named argument "na.rm" often used to indicate 
# that missing values should be removed before calculations
mean(weights_kg, na.rm=TRUE)
max(weights_kg, na.rm=TRUE)
sd(weights_kg, na.rm=TRUE)


# logical test of whether a value is missing
is.na(weights_kg)
# useful for indexing on
weights_kg[is.na(weights_kg)]
weights_kg[!is.na(weights_kg)]

























#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
# 
#                Big Break
# 
#                Questions??
# 
#
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################














#########################################################
#.      Data Frames
#########################################################

# create a data frame object and assignt to my_data_frame
my_data_frame <- data.frame(
  study_id = c("id_01", "id_02", "id_03", "id_04"),
  sex = c("M", "F", "F", "M"),
  age = c(28, 46, 21, 65),
  weight_kg = c(70, 80, 120, 75)
)

# print my_data_frame to the console
# note how row numbers, column names and data are presented
my_data_frame

# number of rows in data frame
nrow(my_data_frame)

# column names of a data frame
names(my_data_frame)

# summarise a data frame structure
summary(my_data_frame)

# shorter version 
str(my_data_frame)

# tidyverse version
dplyr::glimpse(my_data_frame)


#########################################################














#########################################################
#.      Indexing data.frame
#########################################################

my_data_frame

#   study_id sex age  weight_kg
# 1    id_01   M  28         70
# 2    id_02   F  46         80
# 3    id_03   F  21        120
# 4    id_04   M  65         75

# single element
my_data_frame[1, 2]

# can use vectors of row or column indices
my_data_frame[c(1,2), 2]

# entire row(s)
###########################

# returns a sub data frame
my_data_frame[1, ]
my_data_frame[c(1,2), ]

# entire column(s)
###########################

# returns a vector
my_data_frame[, 1]

# returns a dataframe
my_data_frame[, c(1,2)]



# dollar indexing
my_data_frame$age



# Named column indices
my_data_frame[, "sex"]
my_data_frame[, c("sex", "age")]

# logical indexing
my_data_frame[c(TRUE, FALSE, TRUE, FALSE), ]
my_data_frame[, c(TRUE, FALSE, TRUE, FALSE) ]

# use logical statements to index data frame
my_data_frame$study_id == "id_02"
my_data_frame[my_data_frame$study_id == "id_02", ]
my_data_frame[my_data_frame$sex == "M" & my_data_frame$age > 30, ]

# can be hard to read and brittle
# tidyverse








#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
# 
#                Mini Break
# 
#                Questions??
# 
#
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################




























#########################################################
#.      Manipulating data - Rows
#########################################################
library(dplyr)


my_data_frame




# dplyr row manipulations
####################

# arrange
####################
dplyr::arrange(my_data_frame, age)
arrange(my_data_frame, age)

arrange(my_data_frame, sex)

# filter
####################
dplyr::filter(my_data_frame, sex =="M")

# one filter condition
filter(my_data_frame, age > 30)
# multiple filter conditions separated by commas
filter(my_data_frame, (age > 25), (weight_kg > 72))

# distinct
####################
distinct(my_data_frame)

distinct(my_data_frame, sex)
distinct(my_data_frame, sex, .keep_all = TRUE)









# dplyr column manipulations
####################

# select 
####################

# specify comma separated column names to keep
select(my_data_frame, study_id, age)

# specify vector of column names to keep
select(my_data_frame, c(study_id, age))

# minus sign prefix - remove named columns
select(my_data_frame, -study_id)
select(my_data_frame, -c(study_id, age))



# rename
####################
rename(my_data_frame, age_years = age)



# mutate
####################

# single mutation
# dplyr::mutate(my_data_frame, weight_lbs = weight_kgs * 2.2)
mutate(my_data_frame, weight_lbs = weight_kg * 2.2)

# multiple mutations in same call to mutate()
mutate(
  my_data_frame, 
  weight_lbs = weight_kg * 2.2,
  age_decades = round(age/10)
)

# if_else conditional mutation of data
mutate(
  my_data_frame,
  weight_kgs = if_else(
    sex == "M",   	# condition
    weight_kg + 10,	# if TRUE use this 
    weight_kg		# if FALSE use this 
  )
)
  

#########################################################
#########################################################







#########################################################
#      The pipe
#########################################################

# intermediate data frames
my_new_dataframe <- mutate(
  my_data_frame, 
  weight_lbs = weight_kg * 2.2
)

my_new_new_dataframe <- filter(my_new_dataframe, sex == "M")

my_new_new_dataframe

# use the pipe
my_new_dataframe <- my_data_frame |>
  mutate(weight_lbs = weight_kg * 2.2) |>
  filter(sex == "M")

