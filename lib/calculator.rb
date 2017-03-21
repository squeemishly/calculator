require 'pry'

class Calculator
  attr_accessor :numbers, :total

  def initialize
    @numbers = []
    @total   = 0
  end
  
  def add
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
  
  def subtract
    numbers.each_with_index do |number, index|
      if index == 0
        @total = number
      else
        @total = total - number
      end
    end
  end
end