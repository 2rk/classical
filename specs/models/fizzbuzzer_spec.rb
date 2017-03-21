require 'rspec'
require_relative "../../models/fizzbuzzer"

describe Fizzbuzzer do

  describe '#new' do
    it 'initializes a new instance of Fizzbuzzer' do
      fuzz = Fizzbuzzer.new(100)
      expect(fuzz).to be_instance_of Fizzbuzzer
    end

    it 'sets the range from 0 to count' do
      fuzz = Fizzbuzzer.new(10)
      expect(fuzz.range).to eq(1..10)
    end
  end

  describe '#run' do
    it 'puts Fizz instead of Fizzer number and Buzz instead of buzzer number up to and including count' do
      expect do
        Fizzbuzzer.new(5).run
      end.to output("1\n2\nFizz\n4\nBuzz\n").to_stdout
    end
    # Would I need to test multiple versions of this, or would that be testing other methods rather than just #run?
  end

  describe '#fizzer' do
    it 'returns given fizzer if fizzer has been set' do
      fuzz = Fizzbuzzer.new(10)
      fuzz.fizzer = 7
      expect(fuzz.fizzer).to eq(7)
    end
    it 'returns 3 as the fizzer if fizzer not explicitly set' do
      fuzz = Fizzbuzzer.new(10)
      expect(fuzz.fizzer).to eq(3)
    end
  end

  describe '#buzzer' do
    it 'returns given buzzer if buzzer has been set' do
      fuzz = Fizzbuzzer.new(10)
      fuzz.buzzer = 6
      expect(fuzz.buzzer).to eq(6)
    end
    it 'returns 5 as the buzzer if buzzer not explicitly set' do
      fuzz = Fizzbuzzer.new(10)
      expect(fuzz.buzzer).to eq(5)
    end
  end

  describe '#fizzes?' do
    it 'returns true if the number is divisible by the fizzer' do
      fuzz = Fizzbuzzer.new(20)
      fuzz.fizzer = 2
      expect(fuzz.fizzes?(6)).to be_truthy
    end
    it 'returns false is the number is not divisible by the fizzer' do
      fuzz = Fizzbuzzer.new(20)
      fuzz.fizzer = 4
      expect(fuzz.fizzes?(6)).to be_falsey
    end
    it 'uses 3 as the default fizzer if no other fizzer set' do
      fuzz = Fizzbuzzer.new(20)
      expect(fuzz.fizzes?(9)).to be_truthy
    end
  end

  describe '#buzzes?' do
    it 'returns true if the number is divisible by the buzzer' do
      fuzz = Fizzbuzzer.new(20)
      fuzz.buzzer = 5
      expect(fuzz.buzzes?(15)).to be_truthy
    end
    it 'returns false is the number is not divisible by the buzzer' do
      fuzz = Fizzbuzzer.new(20)
      fuzz.buzzer = 8
      expect(fuzz.buzzes?(15)).to be_falsey
    end
  end

  it 'play area' do
    fuzz = Fizzbuzzer.new(100)
    fuzz.fizzer = 4
    fuzz.buzzer = 7
    fuzz.run
  end
end


