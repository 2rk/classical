class Fizzbuzzer

  attr_accessor :range
  attr_writer :fizzer, :buzzer

  def initialize(count)
    @range = (1..count)
  end

  def run
    @range.each do |number|
      fizz = fizzes?(number)
      buzz = buzzes?(number)
      case
        when fizz && buzz
          puts 'Fizzbuzz!'
        when fizz
          puts 'Fizz'
        when buzz
          puts 'Buzz'
        else
          puts number
      end
    end
  end

  def fizzer
    @fizzer ||= 3
  end

  def buzzer
    @buzzer ||= 5
  end

  def fizzes?(number)
    number % fizzer == 0
  end

  def buzzes?(number)
    number % buzzer == 0
  end

end

