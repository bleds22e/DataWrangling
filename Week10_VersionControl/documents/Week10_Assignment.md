Assignment 10: Version Control
================
Ellen Bledsoe
2025-04-03

# Assignment Details

### Purpose

The goal of this assignment is to become familiar with integrating git
and GitHub into your coding practice.

### Task

Write R code to successfully answer each question below. Use an RStudio
Project with good sub-directory structure. Commit changes and push them
to GitHub.

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

April 8 before class

# Assignment Exercises

### 1. Set Up Git (15 points)

We will do this together in class.

This question assumes that you have successfully installed `git` on your
device and have an account with GitHub.

**Step 1: Create a new repo on GitHub**

1.  Navigate to Github in a web browser and log in.
2.  Click the `+` at the upper right corner of the page and choose
    `New repository`.
3.  Choose the class organization (e.g., `WFSC-DataWrangling`) as the
    “Owner” of the repo.
4.  Fill in a `Repository name` that follows the form
    `FirstnameLastname_DataWrangling`.
5.  Select `Private`.
6.  Select `Initialize this repository with a README`.
7.  Under “Add .gitignore,” scroll through the template options until
    you find “R” and select it.
8.  Click `Create Repository`.

**Step 2: Connect the repo to a (new) RStudio Project**

1.  On the GitHub page for the new repo you just created in Step 1,
    click on the green “Code” button. Sure that HTTPS is selected, and
    then copy the web URL.
2.  In RStudio, create a new RStudio Project. Instead of selecting “New
    Project,” this time you will select “Version Control.”
3.  Paste the URL you copied in (a) in the `Repository URL:` slot.
4.  Leave `Project directory name:` blank. This will automatically use
    the repo name for the name of the RStudio PRoject.
5.  Choose where to `Create project as subdirectory of:`.
6.  Click `Create Project`.
7.  Check to make sure you have a `Git` tab in the upper right window.

### 2. First Solo Commit (15 points)

In `fish_analysis.Rmd` (which we started in class), add some text about
the code chunk(s) describing what the code does in each code chunk.

Commit this change to version control with a concise and descriptive
commit message.

### 3. Committing Multiple Files (15 points)

You discover that the device used to measure the scale length of the
fish in `Gaeta_etal_CLC_data.csv` is not accurate for those smaller than
1 mm.

Create a new data frame without fish with a `scalelength` of less than 1
mm from `fish_data`. The new dataset will have 4,029 rows (see answer
key).

Use the `write_csv()` function to save this new data frame as a CSV
file. It should be in an appropriate sub-directory.

Commit this change to version control with a good commit message.

Once you’ve made the commit, push the commit to your repo. Pop over to
GitHub to ensure that the .Rmd file and the new dataset are there.

**NOTE:** Send your instructor an email letting them know you have
completed Questions 1-3. Include a link to your repo. Wait until you
have received confirmation from the instructor to move onto Question 4.

### 4. Pulling and Pushing (20 points)

**STOP: Make sure you informed your instructor an email following the
last exercise with a link to your Github repository and wait until your
teacher has told you they’ve updated your repository before doing this
one.**

While you were working on your plot of size among lakes, your colleague
wrote some code to generate a histogram of scale lengths. To get it
you’ll need to `pull` the most recent changes from Github.

1.  On the `Git` tab, click on the `Pull` button with the blue arrow.
    You should see some text that looks something like:

        From github.com: bleds22e/your_repo_name
           1e24ac8..815e600  main     -> origin/main
        Updating 1e24ac8..815e600
        Fast-forward
         fish_analysis.Rmd | 1 +
         1 file changed, 2 insertion(+)
        create mode 100644 fish_analysis.Rmd

2.  Click `OK`.

3.  You should see the new lines of code in your `fish_analysis.Rmd`.

        ggplot(fish_data, aes(x = scalelength)) +
          geom_histogram()

4.  Modify this code to look at narrower range of scale size classes by
    setting the bins argument to 80.

5.  Save the changes to the code. Additionally, save this new plot as
    `scale_hist_by_length.jpg` using `ggsave`. Be sure to save your plot
    to an appropriate sub-directory.

6.  Commit the new code and resulting `.jpg` file by adding both files
    to the stage and committing with a good commit message. Push this
    commit to GitHub.

### 5. Create a Final Project Repo (20 points)

You will now need to set up a repo for your final project.

To do so, you will want to follow a similar process (and structure) as
Question 1.

1.  Start by creating a new repo on GitHub
2.  Create a new RStudio Project which is connected to this repo.
3.  Create sub-directories according to your preferred project structure
    (note: if the folders are empty, you likely won’t be able to commit
    them yet–that’s ok!)
4.  If you already know what data you will be using (and it is smaller
    than 100 MB), add it to the appropriate sub-directory. If you
    haven’t yet committed to a dataset, that’s fine; no need to add
    data. If your data are larger than 100 MB, let’s chat first!
5.  Commit (with a strong commit message) and push your changes.

### 6. Modify a README.md File (10 points)

In RStudio (not on GitHub), I want you to add a bit of information to
the `README` file for your final project repo. Once you are done, commit
and push your changes to GitHub.

It doesn’t have to be a lot
([here](https://github.com/Big-Biodiversity-Collaborative/west-virginia-white)
is an example with more detail than you need).

Some suggestions for what to include:

- a 1-2 sentence of what the repo is for
- a few sentences about your dataset
- a quick overview of your current (or expected) sub-directory structure

This is also an opportunity for you to get a bit more familiar with
using Markdown, if you are interested; that said, this question *will
not be graded on aesthetics or style* but on completion.

[This website](https://www.markdownguide.org/basic-syntax/) is a great
references for how to “code” in Markdown. If you are in Visual mode, you
can also add headers and whatnot through the tool bar at the top of the
document.

### 7. Include This Document (5 point)

Include this file in the appropriate sub-directory (something along the
lines of `docs` or `code`). Commit and push to your repo.

Find this document on GitHub. If you click on the `.md` version (*not*
the `.Rmd`), it should show you the “visual” output on GitHub. That’s
because the output of this file is a “github_document” (not a
pdf_output, for example).

# Turning in Your Assignment

To successfully “submit” your assignments for the rest of the semester,
you will be submitting the URL to whatever repo on GitHub contains that
work.

For this week, you will need to submit two URLS: one for the repo you
created in class (for Question 1) and one for your Final Project repo.
