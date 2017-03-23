require 'rspec'
require_relative "../models/fizzbuzz"


describe FizzBuzz do
  describe '.fizzbuzz' do
    it 'returns FizzBuzz on numbers divisible by 3 and 5' do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.fizzbuzz?(15)).to be true
      expect(fizzbuzz.fizzbuzz?(16)).to be false
    end
  end

  describe '.fizz' do
    it 'returns fizz on numbers divisible by 3' do
      fizz = FizzBuzz.new
      expect(fizz.fizz?(3)).to be true
      expect(fizz.fizz?(4)).to be false
    end
  end

  describe '.buzz' do
    it 'returns buzz on numbers divisible by 5' do
      buzz = FizzBuzz.new
      expect(buzz.buzz?(5)).to be true
      expect(buzz.buzz?(74)).to be false
    end
  end

  describe '.to_array' do
    it 'makes a fizzbuzz array' do
      fizzbuzz = FizzBuzz.new
      array = fizzbuzz.to_array
      expect(array.count).to eq(100)
      # These tests will work because counting of the array starts at 0.
      # Eg. 88 is the key, 89 is the value.
      expect(array[88]).to eq(89)
      expect(array[77]).to eq('fizz')
      expect(array[79]).to eq('buzz')
      expect(array[74]).to eq('fizzbuzz')
    end
  end

  # Unused play area
  # describe 'play area' do
  #   it 'returns 1 - 100 with fizzbuzz, fizz and buzz' do
  #     count = FizzBuzz.new
  #     (1..100).each do |x|
  #       if count.fizzbuzz (x)
  #         puts  "fizzbuzz"
  #       elsif  count.fizz (x)
  #         puts "fizz"
  #       elsif count.buzz (x)
  #         puts "buzz"
  #       else
  #         puts x
  #       end
  #     end
    # end
  # end
end
