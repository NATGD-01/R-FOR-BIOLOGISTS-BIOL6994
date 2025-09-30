library(datasets)
data("mtcars")
head(mtcars, 3) 
View(mtcars)
print(mtcars)


# To examinne -------------------------------------------------------------------------


class(mtcars)
length(mtcars)
nrow(mtcars)
ncol(mtcars)
attributes(mtcars)
str(mtcars)

# data manipulation -------------------------------------------------------------------------
four <- 4
class(four)

# vectors -------------------------------------------------------------------------
vector()
x <- c(1, 2, )
x
class(x)

z <-c("Natally", "Natalia", "Ariana")
z
class(z)

z <- c(z, "Alan")
z
z <- sort(c(z, "Diana"))
z

# coercion -------------------------------------------------------------------------
y <- c(1,2, "Edgardo")
class(y)

# create your vector ---------------------------------------
a <- seq(1:50)
seq(1, 50, by =2)
seq(from= 2, to=20, by =0.2)

a[40]
z[2]


series <-0:100
series

sample(series, 1)
sample(series, 20, replace= TRUE)
sample(series, 20, replace= FALSE)


# Missing values ----------------------------------------------------------------------------------------
v <- c(1, 2, NA, 4, 5)
mean(v)
mean(v, na.rm = TRUE)



# Matrices--------------------
m <- matrix(1:20, nrow = 4, ncol = 5, byrow = TRUE)
m

x <- c(1,2,3,4,5)
y <- c(6,7,8,9,10)
z <- c(11,12,13,14,15)

matriz <- cbind(x, y, z)
matriz

dim(matriz)

cor(matriz)


# Clase jueves 11-09--------------------------------------------------------------------



)
