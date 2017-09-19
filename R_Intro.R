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
    # Sublime
    # Many more that don't support R as well as other languages

  # ---------------------
  # Saving your work
    # Script vs. console

  # ---------------------
	# Set working directory
		# setwd("C:/") # If you're on a PC
		# setwd("/Users/Will/Desktop/R Course/Week 1/") # If you're on a Mac
    setwd("~/GitHub/IntroToR")
		
	# ---------------------
	# Check working directory to make sure it matches
		getwd()

	# ---------------------
	# Read in some data
		tmp1 <- read.table("HeightsWeights.txt", header=TRUE)
		read.table("/Users/Will/Desktop/R Course/Week 1/HeightsWeights.txt", header=TRUE)

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
	# EXERCISE 1:
		
		# Create a folder on your desktop and name it with your first name
		
		# Go online to https://github.com/jenny603 
		    # Navigate to IntroToR
		
		# Set your working directory to be that folder
		
		# Check to make sure it set correctly
		# 
		

# =============================================================================
# OBJECTS IN R
# =============================================================================

	# ----------------------
	# General syntax for ssigning objects
		a1 <- 1 # Use a backward-facing arrow!
		a2 = 1 # Avoid using an equals sign

	# ----------------------
	# Vectors - 1-dimensional objects
		
		# Created from specific numbers you choose
			v1 <- c(1,2,3,4,5,6,7)
			v1
			v1[1:4]
			head(v1)
			tail(v1)
			v1a <- v1[4:6]
			str(v1)
		
		# Random pulls from a specified distribution
			v2 <- runif(50, 0, 1)  # Random uniform distribution
			v2
			v2[1:10]
			v2[2]
			head(v2) #preview beginning / end
			tail(v2)
			v2a <- v2[-3]
			str(v2)
	# --------------------------------------------------------------------------
	# TASK #1: Create some data and then look at it!












	# --------------------------------------------------------------------------
	
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
		head(iris)
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
		df1$Species # just column Species
		df1$Species[10]

	# ------------------------
	# Array 
		?array()
		ray <- array(rnorm(8,0,1), dim=c(2,2,2))
		str(ray)
		ray[ , ,]
		ray2 <- ray[    ,    , -2]

# =============================================================================
# FOR REFERENCE
# =============================================================================

	# -------------------------
	# Clear or clean up workspace
		ls()
		rm(list = ls())
		rm(x)	