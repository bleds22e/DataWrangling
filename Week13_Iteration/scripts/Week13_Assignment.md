# Week 13 Assignment
Ellen Bledsoe
2025-12-01

# Assignment

### Purpose

The goal of this assignment is to practice writing and using for loops
for iteration.

### Task

Write R code to successfully answer each question below.

### Criteria for Success

- Code is within the provided code chunks or new code chunks are created
  where necessary
- Code chunks run without errors
- Code chunks have brief comments indicating which code is answering
  which part of the question
- Code will be assessed as follows:
  - Produces the correct answer using the requested approach: 100%
  - Generally uses the right approach, but a minor mistake results in an
    incorrect answer: 90%
  - Attempts to solve the problem and makes some progress using the core
    concept, but returns the wrong answer and does not demonstrate
    comfort with the core concept: 50%
  - Answer demonstrates a lack of understanding of the core concept: 0%
- Any questions requiring written answers are answered with sufficient
  detail

### Due Date

Nov 25 before class

# Assignment Exercises

### Set Up

Be sure to load the `tidyverse` to use later in the assignment.

``` r
library(tidyverse)
```

    ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
    ✔ dplyr     1.1.4     ✔ readr     2.1.5
    ✔ forcats   1.0.0     ✔ stringr   1.5.2
    ✔ ggplot2   4.0.0     ✔ tibble    3.3.0
    ✔ lubridate 1.9.4     ✔ tidyr     1.3.1
    ✔ purrr     1.1.0     
    ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ✖ dplyr::filter() masks stats::filter()
    ✖ dplyr::lag()    masks stats::lag()
    ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors

### 1. For Loop Basics (30 pts)

Complete the following tasks.

I recommend copying the commented code and making changes to the copy.
That way, if you have made edits that you haven’t kept track of, you
have the original code to start over as needed.

1.  The code below prints the numbers 1 through 5 one line at a time.
    Modify it to print each of these numbers multiplied by 3.

``` r
numbers <- c(1, 2, 3, 4, 5)
# for (number in numbers){
#   print(number)
# }
```

2.  Write a for loop that loops over the following vector and prints out
    the mass in kilograms (`mass_kg = 2.2 * mass_lb`)

``` r
mass_lbs <- c(2.2, 3.5, 9.6, 1.2)
```

3.  Complete the code below so that it prints out the name of each bird
    one line at a time.

``` r
# birds <- c("robin", "woodpecker", "blue jay", "sparrow")
# for (i in 1:length(_________)){
#   print(birds[__])
# }
```

4.  Complete the code below so that it stores one area for each radius.

``` r
radius <- c(1.3, 2.1, 3.5)
# areas <- vector(_____ = "numeric", length = ______)
# for (__ in 1:length(________)){
#   areas[__] <- pi * radius[i] ^ 2
# }
# areas
```

5.  Complete the code below to calculate an area for each pair of
    `lengths` and `widths`, store the areas in a vector, and after they
    are all calculated print them out:

``` r
lengths <- c(1.1, 2.2, 1.6)
widths <- c(3.5, 2.4, 2.8)
# areas <- vector(length = __________)
# for (i in _____) {
#   areas[__] <- lengths[__] * widths[__]
# }
# areas
```

### 2. Size Estimates by Name (30 pts)

This is a followup to “Size Estimates by Name” from last week.

Download the `dinosaur_lengths.csv` file from D2L and place it in the
correct directory. Read the file into R.

Write a function `mass_from_length()` that uses the equation
`mass <- a * length^b` to estimate the size of a dinosaur from its
length. This function should take two arguments, `length` and `species`.
For each of the following inputs for `species`, so use the associated
`a` and `b` values to estimate the species mass using these equations:

- *Stegosauria*: `mass = 10.95 * length ^ 2.64` ([Seebacher
  2001](http://www.jstor.org/stable/4524171)).
- *Theropoda*: `mass = 0.73 * length ^ 3.63` ([Seebacher
  2001](http://www.jstor.org/stable/4524171)).
- *Sauropoda*: `mass = 214.44 * length ^ 1.46` ([Seebacher
  2001](http://www.jstor.org/stable/4524171)).
- For any other value of `species`: `mass = 25.37 * length ^ 2.49`

1.  Use this function and a `for` loop to calculate the estimated mass
    for each dinosaur, store the masses in a vector, and after all of
    the calculations are complete show the first few items in the vector
    using `head()`.
2.  Add the results in the vector back to the original data frame. Show
    the first few rows of the data frame using `head()`.
3.  Calculate the mean mass for each `species` using `dplyr` (no `for`
    loops).

### 3. Multi-file Analysis (20 pts)

You have satellite collars on a number of different individuals and want
to be able to quickly look at all of their recent movements at once. The
data is posted daily to a URL that contains one csv file for each
individual: [zip
file](http://www.datacarpentry.org/semester-biology/data/individual_collar_data.zip)

Start your solution by:

- Download the zip file from the link above. Place the zip file in the
  appropriate sub-directory, if you have them.
- Unzip it using the `unzip()` function
- Obtain a list of all of the files with file names matching the pattern
  `"collar-data-.*.txt"` (using `list.files()`)

1.  Use a loop to load each of these files into R and make a line plot
    (using `geom_path()`) for each file with `long` on the `x` axis and
    `lat` on the `y` axis.

Graphs, like other types of output, won’t display inside a loop unless
you explicitly display them, so you need put your `ggplot()` command
inside a `print()` statement. Do this by saving the output of the ggplot
function as an object and then printing that object.

Include the name of the file in the graph as the graph title using the
`labs` function (`labs(title = ...)`).

2.  Add code to the loop to calculate the minimum and maximum latitude
    in the file, and store these values, along with the name of the
    file, in a data frame.

Show the data frame as output.

### 4. DNA or RNA (20 points)

In this question, you will use the function below in several different
forms of iteration.

This function determines if a sequence of base pairs is DNA, RNA, or if
it is not possible to tell given the sequence provided. RNA has the base
Uracil (“u”) instead of the base Thymine (“t”), so sequences that
contain a “u” are RNA, sequences with a “t” are DNA, and sequences with
neither are unknown.

Just as a quick note, this function uses functions from the `stringr`
package, which we will learn about in our final week of content.

``` r
dna_or_rna <- function(sequence){
  # Determines if a character string represents DNA, RNA, or is unknown
  # by searching the character string for the unique base pairs t & u.
  # stringr::str_count determines the number of times a pattern is present in a string
  if (stringr::str_count(sequence, "t") > 0){
    # if `sequence` contains 1 or more "t"
    type <- "DNA"
  } else if (stringr::str_count(sequence, "u") > 0){
    # if `sequence` contains 1 or more "u"
    type <- "RNA"
  } else {
    # if sequence has no "t" or "u"
    type <- "UNKNOWN"
  }
  return(type)
}
```

1.  Use the function to determine the sequence type for the following
    sequences.

``` r
seq1 <- "ttgaatgccttacaactgatcattacacaggcggcatgaagcaaaaatatactgtgaaccaatgcaggcg"
seq2 <- "gauuauuccccacaaagggagugggauuaggagcugcaucauuuacaagagcagaauguuucaaaugcau"
seq3 <- "gaaagcaagaaaaggcaggcgaggaagggaagaagggggggaaacc"
```

Before tackling the next questions, run the following code chunk to
create a vector called sequences.

``` r
sequences <- c("ttgaatgccttacaactgatcattacacaggcggcatgaagcaaaaatatactgtgaaccaatgcaggcg",
              "gauuauuccccacaaagggagugggauuaggagcugcaucauuuacaagagcagaauguuucaaaugcau",
              "gaaagcaagaaaaggcaggcgaggaagggaagaagggggggaaacc",
              "guuuccuacaguauuugaugagaaugagagcaccugaucagguggauaaggaagaugaagacu",
              "gauaaggaagaugaagacuuucaggaaucuaauaaaaugcacuccaugaauggauucauguaugggaaucagccggguc")
```

2.  Use the function and a `for` loop to create a vector of sequence
    types for the values in sequences

3.  Use the function and a `for` loop to create a data frame that
    includes a column of sequences and a column of their types.

4.  This time, instead of using the function, place the `if`-`else`
    portion of the code directly into the `for` loop. Modify the code so
    that it successfully creates the same output as (c) above. Remember
    to “reset” the data frame that will hold the output so it is empty
    before you start your loop.

5.  OPTIONAL: Use the function and `sapply` to create a vector of
    sequence types for the values in sequences

6.  OPTIONAL: Use the function, and `mutate()` to create a data frame
    that includes a column of sequences and a column of their types.
    First, run the following line of code to turn the sequence vector
    into a dataframe.

``` r
seq_df <- as.data.frame(sequences)
```

## Turning in Your Assignment

As with the last few weeks, you will be submitting your assignment by
submitting the link to your GitHub repository.

**NOTE**: While I won’t take points off for not doing this, it is very
helpful for grading if you can “Render” your assignments to markdown
(.md) files and push the .md files to GitHub.

That way, I (a) know that your code runs successfully and (b) can go to
your .md file on GitHub and easily see everything in your assignment,
including your outputs, much like in the PDFs you submitted earlier in
the semester.
