


data(DNase)
head(DNase)


mean <- aggregate(density ~ conc,
                  data=DNase, FUN=mean)
mean


barplot(
  height = mean$density, # height is a vector of numeric values that determines the h
  names.arg = mean$conc, # names.arg is a vector of names of each bar
  col = "lightblue",
  border = "gray30",
  main = "Mean DNase I Activity by Concentration", # Main title of the plot
  xlab = "Concentration (mg/mL)", # Label for the X-axis
  ylab = "Mean Optical Density", # Label for the Y-axis
  las = 3, # rotate labels for clarity
  cex.names = 0.8, # adjust label size
  horiz = TRUE # make bars horizontal
) # Don't forget to close the parenthesis





library(readxl)
coronary <-read_excel("R-TUTORIALS/coronary.xlsx")
head(coronary)

plot(
  coronary$dbp ~ coronary$chol,
  type = "p",                      
  col = "pink",                    
  lwd = 3,                         
xlab = "Total Cholesterol (mmol/L)",  # x-axis label
ylab = "Diastolic Blood Pressure (mmHg)", # y-axis label
main = "Relationship between Cholesterol and Diastolic BP",
pch= 25
)


spearman_result <- cor.test(
  coronary$chol,
  coronary$dbp,
  method = "spearman",
  exact = FALSE # avoids warnings with tied ranks
)

spearman_result


plot(
  coronary$dbp ~ coronary$chol,
  type = "p",                      
  col = "blue",                    
  lwd = 2,                         
  # line plot
  # line color
  # line width
  xlab = "Total Cholesterol (mmol/L)",  # x-axis label
  ylab = "Diastolic Blood Pressure (mmHg)", # y-axis label
  main = "Relationship between Cholesterol and Diastolic BP"
)
abline(lm(dbp ~ chol, data = coronary), col = "purple", lwd = 4,lty = 3)



coronary <- coronary[order(coronary$age), ]
# Gráfico de líneas básico
plot(coronary$age, coronary$chol,
     type = "l", # "l" = line plot
     col = "pink",
     lwd = 2,
     xlab = "Age (years)",
     ylab = "Cholesterol (mmol/L)",
     main = "Cholesterol vs Age")


hist(coronary$chol,
     main = "Distribution of Cholesterol",
     xlab = "Cholesterol (mmol/L)",
     col = "pink",
     border = "white",
     breaks = 40,   # You can cange the number
)


boxplot(coronary$chol,
        main = "Cholesterol Levels",
        ylab = "Cholesterol (mmol/L)",
        col  = "lightgreen",
        border = "darkgreen"
)


boxplot(sbp ~ gender,
        data = coronary,
        main = "Systolic Blood Pressure by Age Group",
        xlab = "Age Group (years)",
        ylab = "Systolic BP (mmHg)",
        col = "lightblue",
        border = "darkblue"
)


anova_model <- aov(sbp ~ gender, data = coronary)
summary(anova_model)


shapiro.test(residuals(anova_model))


bartlett.test(sbp ~ gender, data = coronary)
