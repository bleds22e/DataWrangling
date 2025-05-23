Week 14 Assignment
================
Jeff Oliver
2025-04-28

# Assignment Details

### Purpose

The goal of this assignment is to practice working with geospatial
raster and vector data.

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

April 22 at midnight MST

# Assignment Questions

### 1. Working with raster data in `terra` (20 pts)

In this exercise, you will work with the same precipitation data as in
class, but this time focus in on the Himalayan region of Asia.

1.  Load in the `terra` package. What version does it say you are using?

2.  Load in the precipitation data (`global_precipitation.tif`). What is
    the EPSG used in these data?

3.  Define a geographic extent object for the Himalayan region.

4.  Crop the precipitation data to the Himalayan extent; what are
    resulting dimensions?

### 2. Printing maps (20 points)

Still working with the precipitation data, this exercise focuses on
visualizing the data.

1.  Plot the precipitation data for the Himalayan region.

2.  Add a title to the plot.

3.  Change the palette to that of `topo.colors` (use `?topo.colors` for
    details) and print the resultant plot.

4.  Change the palette to one from
    [ColorBrewer](https://colorbrewer2.org) for sequential (continuous)
    data.

### 3. Working with vector data in `terra` (20 points)

1.  Create a data frame of three peaks in the Himalayan region: (lat,
    lon)

- K2: 35.93, 76.50
- Annapurna: 28.53, 83.81
- Mount Everest: 28.05, 86.91

2.  Create a `SpatVector` object from the data frame with peak data.

3.  Convert the points `SpatVector` object to a lines object.

4.  Add the lines object to the precipitation plot of the Himalayan
    region.

### 4. Modifying raster values (20 points)

1.  Load in the elevation data (`global_elevation.tif`). What are the
    units for these data?

2.  Convert the units of the raster to feet.

3.  Crop the elevation data to the same geographic extent as
    precipitation data.

4.  Plot the Himalayan elevation data.

### 5. Converting raster objects to spatial vector objects (20 points)

For this last exercise, create a plot that shows precipitation for the
Himalayan region, using a color palette from `ColorBrewer` AND add a
layer that is partially (50%) transparent to shade out regions below
13,000 feet. Take a look at the arguments for the `polys` function for
how to set the color and transparency.
