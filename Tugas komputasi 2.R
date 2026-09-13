library(dplyr)
data(iris)

iris$Sepal.Length
str(iris)

iris <- iris %>% 
  mutate(turunan = ifelse(Sepal.Width > 3, "Besar", "Kecil"))
head(iris,5)

iris <- iris %>% 
  rename(sepal = turunan)

subset_virginica <- iris %>% 
  filter(sepal == "Besar" & Species == "virginica")
print(subset_virginica)

table(iris$Species)

df_setosa <- filter(iris, Species == "setosa")
df_versicolor <- filter(iris, Species == "versicolor")
df_virginica <- filter(iris, Species == "virginica")

df_setosa_urut <- arrange(df_setosa, Sepal.Width)
df_versicolor_urut <- arrange(df_versicolor, Sepal.Width)
df_virginica_urut <- arrange(df_virginica, Sepal.Width)
print(df_setosa_urut)
print(df_virginica_urut)
print(df_virginica_urut)



