ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation

## Sum all the integers
sum = ages.sum

## find the number of integers in the input array
elements = ages.count

## divide the sum of the integers by the number of integers.
## this is the mean.
mean = (sum.to_f / elements.to_f).round(2)

## subtract from each integer the average found in step 3.

new_array = []

ages.each do |value|
  new_array << (value - mean).round(2)
end

## take the result from step 4 and square each number.

new_array.map! { |new_value| (new_value ** 2).round(2) }

## sum all the numbers from the previous step.
## divide the result of the previous step by the number of integers.
## take the square root of the result from the previous step.

# When you find the standard deviation, print it out
## **IS WHAT I'VE DONE HERE ALLOWED? OR IS THIS A GEM/BUILT-IN CODE??**
puts Math.sqrt(new_array.sum / elements).round(2)
