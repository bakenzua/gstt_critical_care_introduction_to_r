







#########################################################
#
#                      Session 1
#                     ===========
#
#  This file is intended to be saved as a local copy, 
#  edited, and used as an experimental space to follow, 
#  alongside taught content.
#
#
#########################################################















#########################################################
#               Comments
#########################################################

# R will ignore anything on a line of code after the 
# "#", hash, hashtag

# RStudio keyboard shortcut "Ctrl-Shift c"

# Very useful to comment out lines that you do not wish to run

# Very very useful to improve readability of code


# Comment freely and often
# Collaborators (and future you) will thank you for it

#########################################################








#########################################################
#               Interacting with R
#########################################################

# Position cursor on lines below and press ctrl-enter
# Line of code should be sent to the console and the results 
# displayed


2 + 2





#########################################################













#########################################################
#              Mathematical operators
#########################################################


# addition
#######################
2 + 2

2 + 2 + 2 + 2

# subtraction
#######################
10 - 3

10.3 - 3

# multiplication
#######################
3.2 *  2

# division
#######################
9 / 2

1 / 3

# exponents - power
#######################
3^2

3^3

3^-1


#########################################################











#########################################################
#              Brackets - parentheses
#########################################################

3 + 0.2 * 2
(3 + 0.2) * 2

3^2 / 2

(3^2) / 2

3^(2/2)

# Parentheses are very useful:
# - Partition commands into logical units
# - Ensure order of commands or operators
# - Improve readability!



# see functions later which use round brackets




# Note that these are round brackets ( )

# Square brackets [ ] and curly brackets { }
# Have different and specific uses

#########################################################
















#########################################################
#              TRUE and FALSE
#########################################################

# TRUE and FALSE
#######################
TRUE
T

FALSE
F

# Be explicit and use TRUE or FALSE, not T or F


# Equality and inequality
#######################
# equal to
2 == 2

2 == 3

# not equal to
2 != 2

2 != 3

# Comparisons
#######################

# greater than
4 > 2
# less than
4 < 10

# greater than or equal to
4 >= 4
# less than or equal to
4 <= 5

# Boolean operators
#######################

# NOT
!TRUE

# AND
TRUE & TRUE
TRUE & FALSE
FALSE & TRUE
FALSE & FALSE

# OR
TRUE | TRUE
TRUE | FALSE
FALSE | TRUE
FALSE | FALSE

#######################










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
#               Objects and assignment
#########################################################

# assign 75 to weight_kg
weight_kg <- 75

# assign 180 to height_cm
height_cm <- 180

# what is weight_kg ?
#######################
weight_kg

# what is height_cm ?
#######################
height_cm


# Apply operators to assigned objects
#######################

# Add 5 to weight_kg
weight_kg + 5

# Assign the increased weight to weight_kg (Idiom)
weight_kg <- weight_kg + 5

# Convert centimetres to metres
height_metres <- height_cm / 100

# Calculate BMI
weight_kg / (height_metres * height_metres)

# Assign BMI calculation into "bmi" object
bmi <- weight_kg / (height_metres * height_metres)

bmi


#########################################################













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
#               Functions
#########################################################

# Examples of calling functions

# square root
sqrt(25) 

# sine
sin(3.141593/2) 

# natural e
exp(1) 

# natural log
log(2.718282)

# log base 10
log10(10000)
# 10^4

# rounding
round(3.141593) 

round(5.67) 





#########################################################
#               Function arguments
#########################################################

# Can be anything not just numbers
# e.g. filenames, other objects even functions

# Functions can have more than one argument

max(1, 4, 2, 6, 3) 

# An argument can alter the way a function operates, such as whether to ignore ‘bad values’
# such an argument is sometimes called an option

round(5.432, digits=1) 
# digits is a named argument

# good practice to use argument names where possible
# - avoid strange errors
# - improve readability


# Arguments can have default values

round(5.432)
round(5.432, digits=0) 










#########################################################
#               Function documentation
#########################################################

# Function questions
#
# What does this function do?
# What arguments does this function expect?
# What's acommon way of using this function?
# What are function arguments named?
# Is there an example of this function's usage?

# Specifics can found in the function’s documentation 

# prefix the function name with question mark

?round

?max

# what arguments does max() expect?
args(max)

#########################################################














#########################################################
#                 Function creation
#########################################################

# create a function to add 5 to a number
add_five <- function(a) {
  
  # add 5 to argument a
  # assign it in to a_plus_five
  a_plus_five <- a + 5
  
  # return
  return(a_plus_five)
}

add_five(2)

add_five(100)


# create a function to add two numbers together
add_together <- function(a, b) {
  
  # add argument a to argument b
  # assign it in to a_plus_b
  a_plus_b <- a + b
  
  # return
  return(a_plus_b)
}

add_together(5, 4)

add_five(
  add_together(5, 4)
)


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
#               Vectors
#########################################################

# assign to an object
weights_kg <- c(70, 82, 115)

weights_kg
# look carefully at how R reports weights_kg in the console

# do mathematical operations or logical comparisons on vectors

# weights_kg to pounds
2.2 * weights_kg

# weights_kg greater than 80
weights_kg > 80



# longer vectors
lots_of_weights <- sample(50:150, 1000, replace=TRUE)
?sample

lots_of_weights
# look carefully at how R reports lots_of_weights in the console

# vectors as arguments to functions
#########################################################

# length of a vector
length(weights_kg)
length(lots_of_weights)

# maximum value of a vector
max(weights_kg)

# square root of every element in the weights_kg vector
sqrt(weights_kg)
# nonsensical but we can do this

# mean weight in weights
mean(weights_kg)
mean(lots_of_weights)


# standard deviation of weights
sd(weights_kg)
sd(lots_of_weights)

# median weight
median(weights_kg)

# sort a vector
sort(weights_kg)
sort(lots_of_weights)



# comparisons or logical operations
#########################################################
weights_kg == 82
weights_kg > 80

# append elements to vectors
weights_kg <- c(weights_kg, 130, 45)

weights_kg

# Another method to append elements to vectors
append(weights_kg, 33)

#########################################################
#               Indexing vectors
#########################################################

# numerical indexing
weights_kg

# first element
weights_kg[1]

# first and third elements
weights_kg[c(1,3)]

lots_of_weights
# look carefully at how R reports lots_of_weights in the console





# logical indexing

# first and third elements
weights_kg[c(TRUE, FALSE, TRUE)]

# weights more than 80
weights_kg > 80

# select weights more than 80
weights_kg[weights_kg > 80]


#########################################################



















#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################
#########################################################