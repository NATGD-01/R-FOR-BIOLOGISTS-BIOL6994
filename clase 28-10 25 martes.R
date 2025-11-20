


library(dplyr)
library(ggplot2)



tvshows <- read.csv("tvshows.csv")
head(tvshows)

ggplot(data= tvshows)

ggplot(data= tvshows, 
       mapping=aes (x=GRP))

ggplot(data= tvshows, 
       mapping=aes (x=GRP, y=PE)) 

ggplot(data= tvshows, 
       mapping=aes (x=GRP, y=PE)) +
geom_point() +
geom_smooth()
  

ggplot(data= tvshows, 
       mapping=aes (x=GRP, y=PE)) +
  geom_point() +
  geom_smooth(method = lm)


summary(lm(PE~GRP, data=tvshows))


mod <- lm(log(PE)~ log(GRP), data=tvshows)
resid <- resid(mod)
shapiro.test(resid)

