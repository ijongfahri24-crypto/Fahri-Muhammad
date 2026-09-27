---
title: "3338250044_Tugas komputasi 1"
author: "fahri"
date: "2026-09-06"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
# 1. Vektor
vec_numeric   <- c(1.2, 2.3, 3.4, 4.5)
vec_numeric
vec_integer   <- c(1L, 2L, 3L, 4L)
vec_integer
vec_logical   <- c(TRUE, FALSE, TRUE, TRUE)
vec_logical
vec_character <- c("A", "B", "C", "D")
vec_character

# 2. Matrix 4x4
mat_4x4 <- matrix(1:16, nrow = 4, ncol = 4)
mat_4x4

# 3. Array 4D (ukuran 2x2x2x2)
arr_4d <- array(1:16, dim = c(2, 2, 2, 2))
arr_4d

# 4. Data Frame (4 kolom: character, numeric, logical, logical)
df_4col <- data.frame(
  kolom_char = c("kemeja", "sepatu", "baju", "celana"),
  kolom_num  = c(10.5, 20.1, 30.8, 40.2),
  kolom_log1 = c(TRUE, FALSE, TRUE, FALSE),
  kolom_log2 = c(FALSE, TRUE, FALSE, TRUE)
)
df_4col

# 5. List 5 Komponen
list_5komponen <- list(
  vector_baris = matrix(c(1, 2, 3, 4), nrow = 1), # Vektor baris (1x4)
  vector_kolom = matrix(c(1, 2, 3, 4), ncol = 1), # Vektor kolom (4x1)
  matrix_4x4   = mat_4x4,
  data_frame   = df_4col,
  sub_list     = list(
    mat_sub  = mat_4x4,
    arr_sub  = arr_4d,
    df_sub   = df_4col,
    vec_sub  = matrix(c(5, 6, 7, 8), nrow = 1)
  )
)
list_5komponen

```

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r cars}
summary(cars)
# 1. Vektor
vec_numeric   <- c(1.2, 2.3, 3.4, 4.5)
vec_numeric
vec_integer   <- c(1L, 2L, 3L, 4L)
vec_integer
vec_logical   <- c(TRUE, FALSE, TRUE, TRUE)
vec_logical
vec_character <- c("A", "B", "C", "D")
vec_character

# 2. Matrix 4x4
mat_4x4 <- matrix(1:16, nrow = 4, ncol = 4)
mat_4x4

# 3. Array 4D (ukuran 2x2x2x2)
arr_4d <- array(1:16, dim = c(2, 2, 2, 2))
arr_4d

# 4. Data Frame (4 kolom: character, numeric, logical, logical)
df_4col <- data.frame(
  kolom_char = c("kemeja", "sepatu", "baju", "celana"),
  kolom_num  = c(10.5, 20.1, 30.8, 40.2),
  kolom_log1 = c(TRUE, FALSE, TRUE, FALSE),
  kolom_log2 = c(FALSE, TRUE, FALSE, TRUE)
)
df_4col

# 5. List 5 Komponen
list_5komponen <- list(
  vector_baris = matrix(c(1, 2, 3, 4), nrow = 1), # Vektor baris (1x4)
  vector_kolom = matrix(c(1, 2, 3, 4), ncol = 1), # Vektor kolom (4x1)
  matrix_4x4   = mat_4x4,
  data_frame   = df_4col,
  sub_list     = list(
    mat_sub  = mat_4x4,
    arr_sub  = arr_4d,
    df_sub   = df_4col,
    vec_sub  = matrix(c(5, 6, 7, 8), nrow = 1)
  )
)
list_5komponen

```

## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
