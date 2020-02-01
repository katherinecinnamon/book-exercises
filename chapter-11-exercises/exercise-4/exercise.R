#Katherine Cinnamon
# Exercise 4: practicing with dplyr

# Install the `"nycflights13"` package. Load (`library()`) the package.
# You'll also need to load `dplyr`
install.packages("nycflights13")
library("dplyr")
library("nycflights13")
# The data frame `flights` should now be accessible to you.
# Use functions to inspect it: how many rows and columns does it have?
# What are the names of the columns?
# Use `??flights` to search for documentation on the data set (for what the 
# columns represent)
??flights

# Use `dplyr` to give the data frame a new column that is the amount of time
# gained or lost while flying (that is: how much of the delay arriving occured
# during flight, as opposed to before departing).
mutate(flights, delayed_in_air = arr_delay - dep_delay) 
flights$delayed_in_air = flights$arr_delay - flights$dep_delay
View(flights)


# Use `dplyr` to sort your data frame in descending order by the column you just
# created. Remember to save this as a variable (or in the same one!)
flights <- arrange(flights, delayed_in_air)
flights
# For practice, repeat the last 2 steps in a single statement using the pipe
# operator. You can clear your environmental variables to "reset" the data frame


# Make a histogram of the amount of time gained using the `hist()` function
hist(flights$arr_delay- flights$dep_delay)

# On average, did flights gain or lose time?
# Note: use the `na.rm = TRUE` argument to remove NA values from your aggregation
summarize(flights, avg = mean(delayed_in_air, na.rm = TRUE))

# Create a data.frame of flights headed to SeaTac ('SEA'), only including the
# origin, destination, and the "gain_in_air" column you just created
to_sea <- filter(flights, dest == "SEA")
to_sea <- select(to_sea, origin, dest, delayed_in_air)
View(to_sea)
# On average, did flights to SeaTac gain or loose time?
summarize(to_sea, avg_delayed)

# Consider flights from JFK to SEA. What was the average, min, and max air time
# of those flights? Bonus: use pipes to answer this question in one statement
# (without showing any other data)!
JFK_SEA <- filter(flights, dest == "SEA" & origin == "JFK") %>% select(air_time)
summarize(JFK_SEA, avg_time = mean(air_time, na.rm = TRUE), min_time = min(air_time, na.rm = TRUE), max_time = max(air_time, na.rm = TRUE)) 



