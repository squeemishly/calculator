# Determine that the calculator exists
# Determine that it has a total line
# Determine that it can add a range of values
# Determine that it can output addition to the total line
# Determine that it can clear the values added
# Determine that it can subtract a range of values

require 'minitest/autorun'
require 'minitest/pride'
require './lib/calculator'

class CalculatorTest < Minitest::Test
  def test_it_exists
    calc = Calculator.new
    assert_instance_of Calculator, calc
  end

  def test_total_line_starts_at_zero
    calc = Calculator.new
    assert_equal 0, calc.total
  end

  def test_can_hold_a_value
    calc = Calculator.new
    assert_equal [2], calc.new_value(2)
  end

  def test_can_hold_multiple_values
    calc = Calculator.new
    assert_equal [2], calc.new_value(2)
    assert_equal [2,3], calc.new_value(3)
    assert_equal [2,3,4], calc.new_value(4)
  end

  def test_it_can_add_values_together
    calc = Calculator.new
    calc.new_value(2)
    calc.new_value(3)
    calc.new_value(4)
    calc.add
    assert_equal 9, calc.total
  end

  def test_it_can_clear
    calc = Calculator.new
    calc.new_value(2)
    calc.clear
    assert_equal [], calc.numbers
  end

  def test_it_can_subtract
    calc = Calculator.new
    calc.new_value(9)
    calc.new_value(7)
    calc.new_value(1)
    calc.subtract
    assert_equal 1, calc.total
  end
end

