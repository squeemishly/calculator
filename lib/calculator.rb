require 'pry'

class Calculator
  attr_accessor :numbers, :total

  def initialize
    @numbers = []
    @total   = 0
  end
  
  def add_to_total
    numbers.each do |number|
      @total = @total + number
    end
  end

  def new_value(number)
    numbers << number
  end

  def clear
    @numbers = []
  end
  
  def subtraction
    numbers.each_with_index do |number, index|
      if index == 0
        @total = number
      else
        @total = total - number
      end
    end
  end
end

# calc = Calculator.new
# calc.new_value(2)
# calc.new_value(3)
# calc.add_to_total
