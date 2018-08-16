# Test for standard deviation project

require 'minitest/autorun'
require 'minitest/pride'
require './lib/event.rb'

class EventTest < Minitest::Test

  def test_it_exists
    event = Event.new("Curling", [0, 1, 2])
    assert_instance_of(Event, event)
  end

  def test_it_has_a_name
    event = Event.new("Curling", [0, 1, 2])
    assert_equal("Curling", event.name)
  end

  def test_ages
    event = Event.new("Curling", [0, 1, 2])
    assert_equal([0, 1, 2], event.ages)
  end

  def test_max_age
    event = Event.new("Curling", [0, 1, 2])
    assert_equal(2, event.max_age)
  end

  def test_min_age
    event = Event.new("Curling", [0, 1, 2])
    assert_equal(0, event.min_age)
  end

  def test_average_age
    event = Event.new("Curling", [0, 1, 2])
    assert_equal(1, event.average_age)
  end

  def test_standard_deviation_age
    event = Event.new("Curling", [0, 1, 2])
    assert_equal(0.82, event.standard_deviation_age)
  end

  def test_get_minus_mean
    event = Event.new("Curling", [0, 1, 2])
    assert_equal([-1.0, 0.0, 1.0], event.get_minus_mean(event.average_age))
## Is the above line or the below line the proper way, here??
    # assert_equal([-1.0, 0.0, 1.0], event.get_minus_mean(1))
  end

  def test_minus_squared
    event = Event.new("Curling", [0, 1, 2])
    assert_equal([1, 0, 1], event.minus_squared(event.get_minus_mean(event.average_age)))
  end

  def test_sum_squared_average
    event = Event.new("Curling", [0, 1, 2])
    assert_equal(0.66, event.sum_squared_average(event.minus_squared(event.get_minus_mean(event.average_age))).truncate(2))
  end

end
