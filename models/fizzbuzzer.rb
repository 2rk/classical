class Fizzbuzzer

  attr_reader :number, :fizzer, :buzzer

  def initialize(number, fizzer = 3 , buzzer = 5)
    @number = number
    @fizzer = fizzer
    @buzzer = buzzer
  end

  def fizzes?
    @number % @fizzer == 0
  end

  def buzzes?
    @number % @buzzer == 0
  end

  def says
    case
      when fizzes? && buzzes?
        puts 'Fizzbuzz!'
      when fizzes?
        puts 'Fizz'
      when buzzes?
        puts 'Buzz'
      else
        puts number
    end
  end
end

