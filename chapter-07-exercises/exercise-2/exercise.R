#Katherine Cinnamon
#Chapter 7 exercise 2

# Exercise 2: indexing and filtering vectors

# Create a vector `first_ten` that has the values 10 through 20 in it (using 
# the : operator)
first_ten <- 10:20

# Create a vector `next_ten` that has the values 21 through 30 in it (using the 
# seq() function)
next_ten <- seq(21,30)

# Create a vector `all_numbers` by combining the previous two vectors
all_numbers <- c(first_ten, next_ten)

# Create a variable `eleventh` that contains the 11th element in `all_numbers`
eleventh <- all_numbers[11]
print(eleventh)

# Create a vector `some_numbers` that contains the 2nd through the 5th elements 
# of `all_numbers`

some_numbers <- all_numbers[2:5]
print(some_numbers)

# Create a vector `even` that holds the even numbers from 1 to 100
even <- seq(2,100, by =2)
print(even)

# Using the `all()` function and `%%` (modulo) operator, confirm that all of the
# numbers in your `even` vector are even

x <- even%%2
all(x = 0)
# Create a vector `phone_numbers` that contains the numbers 8, 6, 7, 5, 3, 0, 9
phone_number <- c(8, 6, 7, 5, 3, 0, 9)

# Create a vector `prefix` that has the first three elements of `phone_numbers`
prefix <- phone_number[1:3]

# Create a vector `small` that has the values of `phone_numbers` that are 
# less than or equal to 5
small <- phone_number[phone_number<=5]

# Create a vector `large` that has the values of `phone_numbers` that are 
# strictly greater than 5
large <- phone_number[phone_number>5]

# Replace the values in `phone_numbers` that are larger than 5 with the number 5
phone_number <- replace(phone_number, phone_number>5, 5)

# Replace every odd-numbered value in `phone_numbers` with the number 0
phone_number <- replace(phone_number, phone_number%%1, 0)
