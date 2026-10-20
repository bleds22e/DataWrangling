# This is an R script. 

## What does that mean? ##

# It is a document that only understands R code, so anything I write that isn't 
# in the language R (such as what I'm writing right now), has to have a # in front
# of it to be ignored.
# The file ending for R scripts is .R

## How does this differ from an RMarkdown or Quarto file? ##

# Because Quarto files combine text with code, we have to specify when the file 
# should interpret what we are typing as the R language; these are the code chunks.
# Since this document only understands the R language, we don't need code chunks...
# and there is no "visual" mode.

# You can think of this document as basically one giant code chunk!
# You can still run lines of code with `Ctrl` + `Enter` or `Cmd` + `Return`

getwd()

## Sourcing code ##

# Sometimes we write code, like our own functions or a data cleaning script, in 
# one file and want to use it in another. The source() function reads and runs 
# all of the code in a file, so anything that file creates (like a function) 
# shows up in our environment.

# weight_function.R is in the code folder, and R scripts start from the
# project folder (see getwd() above), so we need to include the folder in the path.
# (In a Quarto file that is also in code, the file name alone would be enough!)
source("scripts/weight_function.R")

# Now we can use the function that weight_function.R created!
convert_lb_to_kg(150)
convert_lb_to_kg(c(10, 20, 30))