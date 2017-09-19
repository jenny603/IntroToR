###############################################################################
# WILD 370
# LAB: INTRODUCTION TO R -- Sept. 19, 2017
# Notes are based on materials created by Will Janousek and Art Woods
###############################################################################

# =============================================================================
# What is R and why is it awesome?
# =============================================================================

	# Flexibility
	# Data visualization
	# Statistical modeling
	# Mapping
	# ...so much more!

# =============================================================================
# Getting help -- and further resources!
# =============================================================================

	# ---------------------
	# Help functions within R
		?rnorm
		??rnorm

	# ---------------------
	# External resources
		# Google! 
		# Stack Overflow
		# Peers

# =============================================================================
# INITIAL SYSTEM SETUP
# =============================================================================

  # ---------------------
  # Choose a text editor through which you can access your R console
    # Base R
	  # RStudio
    # Notepad ++
    # Many more that don't support R as well as other languages

  # ---------------------
  # Saving your work
    # Script vs. console

  # ---------------------
	# Set working directory
		# setwd("C:/") # If you're on a PC
    setwd("~/GitHub/IntroToR")
		
	# ---------------------
	# Check working directory to make sure it matches
		getwd()

	# ---------------------
	# Read in some data
		tmp1 <- read.table("HeightsWeights.txt", header=TRUE)

	# ---------------------
	# Look at the data
		print(tmp1)
		tmp1
		head(tmp1)
		tail(tmp1)
		str(tmp1)

	# ----------------------
	# Install packages
		install.packages("dplyr")
		library(dplyr)
		
	# ---------------------------------------------------------------------------
	# EXERCISE 1: Practice using the commands described above.
		
		#1. Create a folder on your desktop and name it with your first name
		
		#2. Open a new R script.
		
		#3. Go online to https://github.com/jenny603 
		      # Navigate to the "IntroToR" folder
		      # Click on "HeightsWeights.txt"
		      # Click the "Raw" button in the top right corner
		      # Select all, copy and paste the dataset into the R script you opened
		      #       in step 2.
		      # Save the script in the folder you created in Step 1 and name it 
		      #       "HeightsWeights.txt". You do want to save it as a .txt file,
		      #       so don't worry if a warning pops up. Close the script.
		
		#4. Open another new R script that you'll be working in.
		
		#3. Set your working directory to be the folder you created in Step 1.
		
		#4. Check to make sure the working directory set correctly.
		
		#5. Read in the data you just saved.
		
		#6. Look at the data using print(), head(), tail(), and str().
		
		#7. Install the dplyr package
		
	# ---------------------------------------------------------------------------

# =============================================================================
# OBJECTS IN R
# =============================================================================

	# ----------------------
	# Saving objects
		# The environment
		# Overwriting
		
	# ----------------------
	# Data types
		# Numeric
		# Integer
		# Logical (T/F)
		# Factor
		# Character
		
	# ----------------------
	# General syntax for assigning objects
		a1 <- 1 # Use a backward-facing arrow! (Avoid using an equals sign)

	# ----------------------
	# Vectors - 1-dimensional objects of one data type
		
		# Created from specific elements you choose
			v1 <- c(1,2,3,4,5,6,7,8,9,10)
		  print(v1)
			v1
			v1[1:4]
			head(v1)
			tail(v1)
			v1a <- v1[4:6]
			v1a
			str(v1)
		
		# Random pulls from a specified distribution
			v2 <- runif(50, 0, 1)  # Random uniform distribution
			v2
			v2[1:10]
			v2[2]
			head(v2) 
			tail(v2)
			v2a <- v2[-3]
			str(v2)
			
		# Character vector
			apple <- c("red", "green","yellow")
			apple
			class(apple)
	
	# ------------------------
	# Matrices - 2-dimensional objects
		m1 <- matrix(nrow=2, ncol=3)
		m1 <- matrix("A",nrow=2, ncol=3)
		m1 <-  matrix(rnorm(6,2,0), nrow=2, ncol=3)
		str(m1)
		m1 <-  matrix(1:6, nrow=2, ncol=3)
		m1[1, 2:3]

	# ------------------------
	# Data frames
		df1 <- iris
		head(df1)
		str(df1)
		
		df1$Species
		df1[1:2, ]
		
		names(df1) <- c( "sl", "sw", "pl", "pw", "sp")
		names(df1)
		head(df1)
		
		names(df1)[5] <- "Species"
		head(df1)
		
		df1[1:10 , c("sl", "Species")]
		df1[1:10 , c(1,5)]

		df1$Species[10]
		
	# ---------------------------------------------------------------------------
	# EXERCISE 2: Explore different object types and data types
	
	#1. Determine the class of each of the 5 columns in the iris dataset
		
	#2. How many columns and rows are in the dataset? Try ncol(), nrow(), & dim().
	
	#2. Calculate some summary statistics on the iris dataset. (Hint: use 
	#       the ? function we talked about in line 23 if you don't know how.)
	#             Calculate the mean sepal length.
	#             Calculate the median sepal width.
	#             What is the maximum value of petal length?
	#             What is the minimum value of petal width?
	#             What are the levels (i.e. different values) of the species?
	#             Explore the summary() function; apply it to the whole data frame
	#                   and then just to come columns.
		
	# ---------------------------------------------------------------------------
		
# =============================================================================
# DATA VISUALIZATION
# ============================================================================= 
		
	# --------------------------
	# Plotting
		
		hist(tmp1$weight.pounds)
		hist(tmp1$weight.pounds, col = "gray")
		
		plot(tmp1$weight.pounds ~ tmp1$height.inches)
		plot(tmp1$weight.pounds ~ tmp1$height.inches, pch = 8)
		
	# ---------------------------------------------------------------------------
	# EXERCISE 3: Explore plotting
		
	#1. Use ?par() to look at many of the customizable graphical parameters 
		
	#2. Create a histogram of petal length from the iris dataset, color the bars 
	#       blue, change the x-axis to read "Petal Length (cm)", and change the 
	#       main title to read "Histogram of Iris Petal Length".
		
	# ---------------------------------------------------------------------------

# =============================================================================
# FOR REFERENCE
# =============================================================================

	# -------------------------
	# Clear or clean up workspace
		ls() # List all of the objects currently saved in your environment
		rm(list = ls()) # Be careful - this will clear your whole environment!
		rm(x)	# Use to remove one object from your environment
		
	# -------------------------
	# Helpful tips
		# Use upper- and lower-case words intentionally
		# Don't use spaces; always use underscores
		