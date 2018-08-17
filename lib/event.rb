# require 'pry'

class Event
  attr_reader :name,
              :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def standard_deviation_age
    # sum all the integers in the input
    # find the number of integers in input array
    # divide the sum of the integers(step1) by the number of integers(step2) (this is mean)
    # mean = average_age

    minus_mean = get_minus_mean(average_age)

    squared = minus_squared(minus_mean)

    squared_sum_ave = sum_squared_average(squared)

    Math.sqrt(squared_sum_ave).round(2)
  end


  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    (@ages.sum / @ages.count.to_f).round(2)
  end

  def get_minus_mean(mean)
    minus_array = []

    @ages.each do |value|
      minus_array << (value.to_f - mean).round(2)
    end

    return minus_array
    binding.pry

  end

  def minus_squared(minus_mean)
    minus_squared_arr = []

    minus_mean.each do |new_value|
      minus_squared_arr << (new_value ** 2).round(2)
    end
    return minus_squared_arr
  end

  def sum_squared_average(minus)
    minus.sum / @ages.count
  end

end
