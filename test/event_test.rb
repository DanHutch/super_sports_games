# Test for standard deviation project

require 'minitest/autorun'
require 'minitest/pride'
require './lib/event.rb'

class EventTest < Minitest::Test

  def test_it_exists
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_instance_of(Event, event)
  end

  def test_it_has_a_name
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal("Curling", event.name)
  end

  def test_ages
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal([24, 30, 18, 20, 41], event.ages)
  end

  def test_max_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal(41, event.max_age)
  end

  def test_min_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal(18, event.min_age)
  end

  def test_average_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal(26.6, event.average_age)
  end

  def test_standard_deviation_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal(8.28, event.standard_deviation_age)
  end

  def test_get_minus_mean
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal([-2.6, 3.4, -8.6, -6.6, 14.4], event.get_minus_mean(26.6))
  end

  def test_minus_squared
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal([6.76, 11.56, 73.96, 43.56, 207.36], event.minus_squared([-2.6, 3.4, -8.6, -6.6, 14.4]))
  end

  def test_sum_squared_average
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal(68.64, event.sum_squared_average([6.76, 11.56, 73.96, 43.56, 207.36]))
  end

end
