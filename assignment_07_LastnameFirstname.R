# Assignment: ASSIGNMENT 7
# Name: Burnstein, Moshe
# Date: 2022-07-26

## Set the working directory to the root of your DSC 520 directory
setwd("/homoe/jdoe/Workspaces/dsc520")

## Load the `data/r4ds/heights.csv` to
heights_df <- read.csv("data/r4ds/heights.csv")
str(heights_df)

# Fit a linear model
earn_lm <-  lm(earn ~ height + sex + ed + age + race, data=heights_df)

# View the summary of your model
summary(earn_lm)

predicted_df <- data.frame(
  earn = predict(earn_lm),
  ed=9, race="white", height=33.3,
  age=4, sex="female"
  )
predicted_df

## Compute deviation (i.e. residuals)
mean_earn <- mean(predicted_df$earn)
mean_earn
## Corrected Sum of Squares Total
sst <- ___
## Corrected Sum of Squares for Model
ssm <- ___
## Residuals
residuals <- ___
## Sum of Squares for Error
sse <- ___
## R Squared
r_squared <- ___

## Number of observations
n <- ___
## Number of regression paramaters
p <- 8
## Corrected Degrees of Freedom for Model
dfm <- ___
## Degrees of Freedom for Error
dfe <- ___
## Corrected Degrees of Freedom Total:   DFT = n - 1
dft <- ___

## Mean of Squares for Model:   MSM = SSM / DFM
msm <- ___
## Mean of Squares for Error:   MSE = SSE / DFE
mse <- ___
## Mean of Squares Total:   MST = SST / DFT
mst <- ___
## F Statistic
f_score <- ___

## Adjusted R Squared R2 = 1 - (1 - R2)(n - 1) / (n - p)
adjusted_r_squared <- ___
