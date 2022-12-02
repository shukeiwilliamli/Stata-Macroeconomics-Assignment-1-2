# Stata

## Exercise 1: Cross-sectional Exercise

##The data file contains 534 observations (each referring to one interviewee) on 5 variables taken from the Current Population Survey conducted in 1985. The main objective here is to investigate whether there are wage differences between males and females.

#a) Compute the average hourly wage for both males and females. Interpret your results!

#b) Draw separate histograms showing the empirical distribution of wages for females and males. Comment on the empirical distribution of wages as well as differences across females and males.

#c) Test whether the average hourly wages for males and females are significantly different from each other using a two-sided t-test assuming equal variances. (indicate the relevant alternative hypothesis).

#d) Construct a new variable corresponding to the natural logarithm of the wage variable. Regress log wages on a constant and SEX. Interpret, statistically and magnitude, the coefficient for SEX and compare your findings with the results obtained in (c). Test for heteroskedasticity using White test.

#e) Now add EDUCATION and EXPERIENCE as explanatory variables to the regression model used in (d). Interpret the results for all coefficients. Explain why the coefficient of SEX may have changed compared to (d). What does the change in the coefficient of the variable SEX tell you about the relationship between SEX, EXPERIENCE, and EDUCATION?

#f) Regress normal WAGES on SEX, EDUCATION, EXPERIENCE and squared EXPERIENCE. Now regress log wages on SEX, EDUCATION, EXPERIENCE, and squared EXPERIENCE. Which of the two model would you choose? Justify your answer.

#g) Take the chosen model from part (f) and interpret the relationship between wages (normal or log) and experience. What is the marginal effect of experience on (log) wages? Up until how many years of experience does an increase in experience have a positive impact on (log) wages?

## Exercise 2: International Financial Markets Exercise

#a) Declare time series data. You will need to create a new variable for this as ‘time’ is a string variable. Tip: see ‘help datetime’ and check tutorial 3, show this step only in your do-file solution.

#b) Test the unbiasedness Hypothesis. Plot s and f in a time series graph and compare the trends as we did in the tutorial. Test unbiasedness using regression analysis. Hint: check tutorial 4

#c) Does the exchange rate follow a random walk? Test random walk without drift. Hint: same hypotheses to be tested as in part b)

#d) Test the Covered Interest Rate Parity Condition (CIRP)
