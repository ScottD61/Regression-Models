#Question 1 

x <- c(0.61, 0.93, 0.83, 0.35, 0.54, 0.16, 0.91, 0.62, 0.62)
y <- c(0.67, 0.84, 0.6, 0.18, 0.85, 0.47, 1.1, 0.65, 0.36)

b <- data.frame(x, y)

a <- lm(y ~ x, data = b)
summary(a)

#Question 2
summary(a)

#Question 3
car <- lm(mpg ~ wt , data = mtcars)
summary(car)

cardat <- data.frame(wt = mean(mtcars$wt))
carresults <- predict(car, cardat, interval = "confidence")
carresults

#Question 4
help(mtcars)
#[, 6]    wt	Weight (lb/1000)

#Question 5
predicted_weight <- 3
car <- lm(mpg ~ wt , data = mtcars)
pred_obj <- predict(car, new_dataframe <- data.frame(wt = predicted_weight),
                    interval = "prediction")
pred_obj
#       fit      lwr      upr
#1 21.25171 14.92987 27.57355

