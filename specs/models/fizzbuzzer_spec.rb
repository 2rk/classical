require 'rspec'
require_relative "../../models/fizzbuzzer"

describe Fizzbuzzer do

  describe '#new' do
    it 'initializes a new instance of Fizzbuzzer' do
      fuzz = Fizzbuzzer.new(100)
      expect(fuzz).to be_instance_of Fizzbuzzer
    end
    it 'sets the number of instance' do
      fuzz = Fizzbuzzer.new(30)
      expect(fuzz.number).to eq(30)
    end
    it 'sets the fizzer if arguments are given' do
      fuzz = Fizzbuzzer.new(30,4,7)
      expect(fuzz.fizzer).to eq(4)
    end
    it 'sets the buzzer if arguments are given' do
      fuzz = Fizzbuzzer.new(30,4,7)
      expect(fuzz.buzzer).to eq(7)
    end
  end

  describe '#fizzes?' do
    it 'returns true if the number is divisible by the fizzer' do
      fuzz = Fizzbuzzer.new(6,2,5)
      expect(fuzz.fizzes?).to be_truthy
    end
    it 'returns false is the number is not divisible by the fizzer' do
      fuzz = Fizzbuzzer.new(6,4,5)
      expect(fuzz.fizzes?).to be_falsey
    end
    it 'uses 3 as the default fizzer if no other fizzer set' do
      fuzz = Fizzbuzzer.new(6)
      expect(fuzz.fizzes?).to be_truthy
    end
  end

  describe '#buzzes?' do
    it 'returns true if the number is divisible by the buzzer' do
      fuzz = Fizzbuzzer.new(20, 3, 4)
      expect(fuzz.buzzes?).to be_truthy
    end
    it 'returns false is the number is not divisible by the buzzer' do
      fuzz = Fizzbuzzer.new(19,3,4)
      expect(fuzz.buzzes?).to be_falsey
    end
  end

  describe '#says' do
    it 'says fizz for multiples of 3 when no fizzer given' do
      fuzz = Fizzbuzzer.new(12)
      expect do
        fuzz.says
      end.to output("Fizz\n").to_stdout
    end
    it 'says buzz for multiples of 5 when no buzzer given' do
      fuzz = Fizzbuzzer.new(20)
      expect do
        fuzz.says
      end.to output("Buzz\n").to_stdout
    end
    it 'says fizzbuzz for multiples of 15 when no fizzer or buzzer given' do
      fuzz = Fizzbuzzer.new(30)
      expect do
        fuzz.says
      end.to output("Fizzbuzz!\n").to_stdout
    end
    it 'says number if not divisible by 3 or 5 and no fizzer or buzzer given' do
      fuzz = Fizzbuzzer.new(19)
      expect do
        fuzz.says
      end.to output("19\n").to_stdout
    end
    it 'says fizz for multiples of fizzer when new fizzer set' do
      fuzz = Fizzbuzzer.new(16,4,7)
      expect do
        fuzz.says
      end.to output("Fizz\n").to_stdout
    end
    it 'says buzz for multiples of buzzer when new buzzer set' do
      fuzz = Fizzbuzzer.new(14,4,7)
      expect do
        fuzz.says
      end.to output("Buzz\n").to_stdout
    end
    it 'says fizzbuzz for multiples of fizzer and buzzer when fizzer and buzzer set' do
      fuzz = Fizzbuzzer.new(28,4,7)
      expect do
        fuzz.says
      end.to output("Fizzbuzz!\n").to_stdout
    end
    it 'says number if not divisible by fizzer or buzzer when fizzer and buzzer set' do
      fuzz = Fizzbuzzer.new(19,4,7)
      expect do
        fuzz.says
      end.to output("19\n").to_stdout
    end
  end
  describe 'playarea' do
    puts "Regular fizzbuzz 1 to 30"
    (1..30).each {|num| Fizzbuzzer.new(num).says}
    puts
    puts "4/7 fizzbuzz 1 to 30"
    (1..30).each {|num| Fizzbuzzer.new(num,4,7).says}
  end
end


