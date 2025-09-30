


df<- data.frame(
  Name= c("Yoda", "R2_D2", "chewbacca", "obi-wan kenobi", "Luke Skywalker"),
  Age= c(900, 36, 235, 57, 53),
  Weight= c(130, 180, 150, 170, 160))
df  



# Subsets -----------------------------------------------------------------

df[1,]
df[,2]
df[1:3, 1]

subset<- df[df$Age >234, ]
subset
subset (df, Age >100 & Weight < 200)
 
df1 <- df[, c("Name", "Age")]
df1



# New colum  --------------------------------------------------------------

df$Height <- c(66, 109, 228, 182, 172)
df

df$Jedi <- c(TRUE, FALSE, FALSE, TRUE, TRUE)



# New rows ----------------------------------------------------------------

new_row <- data.frame(Name = "Darth Vader",
                      Age = 45,
                      Weights = 120,
                      Height = 202,
                      Jedi = F)
new_row

df <- rbind(df, new_row)
df


# Names -------------------------------------------------------------------
colnames(df) <- c("Character", "Age (yrs)", "Weight (kgs)", "Height (m)", "Jedi")
df


str(df)


df2 <- data.frame(
  Character = c("Yoda", "Luke Skywalker", "chewbacca",
  "R2_D2", "obi-Wan Kenobi", "Darth Vader"),
  
Planet = c("Dagobah", "Tatooine", "Kashyyyk", "Naboo",
           "Stewjon", "Tatooine")
)

merged_df <- merge(df, df2, by = "Character")



# Import data to Rstudio --------------------------------------------------
codon_usage <- read.csv("codon_usage.csv")
head(codon_usage)

str(codon_usage)

viral <- codon_usage[codon_usage$Kingdom == "vrl", ]
head(viral,10)

viral_bacteria <- codon_usage[codon_usage$Kingdom %in% c("vrl", "bct"), ]

devtools::install_github
