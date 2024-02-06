### Title:    Statistics for Premasters: Introduction into R
### Author:   Selim Berntsen (edited by Peter Hendrix)

###-------------------- R Programming Basics --------------------------------###


# Arithmetics -------------------------------------------------------------


6 + 7 # Addition of two numbers

5 + 4 + 2 + 10

6     +   7 # Space between the digits do not matter
  

# Other arithmetic operators:
  
# Addition -> +
# Substraction -> -
# Multiply -> *
# Division -> /
# Taking powers -> ^ 
  
# Some more (complex) operations

# Divide 3 by 14 and substract 5 from the result
3 * 14 - 5

# Raise 5 to the power of 4
5 ^ 4

# Divide 267563 by 1235
267563 / 1235


# Logical statements ------------------------------------------------------


# is equal to               ==
# is not equal to           !=
# greater than              >
# greater than or equal to  >=
# less than                 <
# less than or equal to     <=

# Use logical operations to get R to agree that 2 plus 2 equals five is FALSE

2 + 2 == 5

# Use logical operations to test if  8 to the power of 13 is less than 15 ^ 9

8 ^ 13 > 15 ^9



# Functions ---------------------------------------------------------------


# Some basic functions and their documentation

?sqrt
?round
?log
?exp
?abs

# Some practice with functions

# 1. Calculate the square root of 789
sqrt(789)

# 2. Round 2.456 to the nearest whole number
round (2.456, digits=2)

# 3. Round 2.456 to two decimal points
round (x = 2.456, digits = 2)
round (2.456, 2) # Same result!

# 4. Calculate 25! (factorial)
factorial(25)

# 5. Also calculate 2000! 
factorial(2000) 


# Variables ---------------------------------------------------------------

# 1. Create a variable named potatoes, which corresponds to the amount of 
# potatoes you have eaten this week
fruits <- 4
tacos = 5     # Both = and <- work

# 2. Print out the value that is stored in the variable: potatoes
fruits

# 3. Now use the print function to do the same thing
print (fruits)

# 4. Calculate the square root of 'potatoes'
sqrt(fruits)

# 5. Check if the value of 'potatoes' did not change
potatoes

# 6. Reasign the value of 'potatoes'to 'potatoes * 2
fruits <- fruits * 2

# 7. Print the new value of 'potatoes'
print (fruits)


# Different type of values can be stored as a variable. Check this!

# 1. Create a character variable and a logical variable
day <- "Monday"
bool <- TRUE
bool <- T # Also works
bool_F <- F # F for FALSE or just type in FALSE

# 2. Create variables with special numeric variables such as NaN, Inf and - Inf
infinite <- Inf
m_infinite <- - Inf
not_a_number <- NaN

# 3. Create a variable with a "missing" value
missing <- NA

# 4. Create a variable with a "non-existant" value
not_existing <- NULL



# Vectors -----------------------------------------------------------------

# 1. Try creating your first vector, existing out of three numeric elements
v1 <- c(1, 2, 3)

# 2. Create a vector existing out of three character values
v2 <- c("I", "Love", "Stats")

# 3. Create a named numeric vector with ages as elements, corresponding to their names
v3 <- c("Trump" = 73, "Rutte" = 52, "Putin" = 66)
print (v3)



# Import data -------------------------------------------------------------


# Importing a csv file into the R environment

# 1. You could use the interface to download the exp.csv file into your environment

# 2. However, this could also be automated by writing a line of code to do this:
# You should know where you store the dataset, because the path is important 
# in order for R the find the file. First checkout what the location of the working
# directory is

getwd()

# Now get your data

expt <- read.csv("~/Statistics/datasets/expt.csv") # You have to fill in your location right here 



# Data frames -------------------------------------------------------------


# 1. First take a look at the airquality dataset, after load it into your environment

airquality
data(airquality)

# 2. Substract the 'Wind' variable

airquality$Wind # Now the column is represented as a vector!

# 3. Finally, try to print out the third element of the 'Wind' variable

airquality$Wind[3] # Now it is a single variable!
