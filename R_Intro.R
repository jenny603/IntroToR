################################################
# WILD 370
# LAB: INTRODUCTION TO R -- Sept. 19, 2017
################################################

# ==============================================
# What is R and why is it awesome?
# ==============================================

	# Data visualization
	# Statistical modeling
	# Mapping
	# ...so much more!

# ==============================================
# Getting help -- and further resources!
# ==============================================

	# ---------------------
	# Help functions within R
		?rnorm
		??rnorm

	# ---------------------
	# External resources
		# Google! 
		# Stackoverflow
		# Peers

# ==============================================
# INITIAL SYSTEM SETUP
# ==============================================

	# ---------------------
	# Set working directory
		setwd("C:/") # If you're on a PC
		# setwd("/Users/Will/Desktop/R Course/Week 1/") # If you're on a Mac

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
		library(ggplot2)

# ==============================================
# OBJECTS IN R
# ==============================================

	# ----------------------
	# Assigning objects
		a <- 1 # Use a backward-facing arrow!
		a = 1 # Avoid using an equals sign

	# ----------------------
	# Vectors - 1-dimensional objects
		v1 <- runif(50, 0, 1)  #random uniform dist.
		v1
		v1[1:10]
		v1[2]
		head(v1) #preview beginning / end
		tail(v1)
		v2 <- v1[-3]

c(1,2,3) #concatenate
c(1:2,4:10)


v1[c(1:2,4:10)]

#looking the structure of an object

str(v1)

#Matrices - 2d    matrix[rows,columns]

m1 <- matrix(nrow=2, ncol=3)

m1 <- matrix("A",nrow=2, ncol=3)

m1 <-  matrix(rnorm(6,2,0), nrow=2, ncol=3)

str(m1)
m1 <-  matrix(1:6, nrow=2, ncol=3)

m1[1, 2:3]


#DataFrames
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

# $ attributes a column to dataframe

df1$Species # just column Species

df1$Species[10]


#Array - multidimensional 
?array()

ray <- array(rnorm(8,0,1), dim=c(2,2,2))

str(ray)

ray[ , ,]

ray2 <- ray[    ,    , -2]

