3+3
library(tidyverse)
install.packages("tidytext")
library(tidytext)

d1 <- read_csv("data/sci-online-classes.csv", col_names=TRUE) |>
  select(student_id, FinalGradeCEMS, course_id) |> # select variables
  rename(final_grade = FinalGradeCEMS) |> # rename FinalGradeCEMS
  filter(final_grade > .5) |> # keep grades higher than 50% 
  drop_na() # remove rows with missing data

head(d1)

add_numbers <- function(number_1, number_2) {
  number_1 + number_2
}
add_numbers(5,10)
library(ggplot2)
ggplot(d1, aes(x = final_grade)) +
  geom_histogram(fill = "blue", bins = 10
                 )
