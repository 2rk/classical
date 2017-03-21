require 'rspec'
require_relative "../../models/sarahb_fizzbuzz"

describe 'fizzbuzz' do
  it "a fizzbuzz of 1 returns 1" do
      fb = Fizzbuzz.new(1)
    expect(fb.string).to eq(1)
  end
  it "returns fizz for 3" do
      fb = Fizzbuzz.new(3)
      expect(fb.string).to eq('fizz')
  end
  it 'returns buzz for 5' do
      fb = Fizzbuzz.new(5)
      expect(fb.string).to eq('buzz')

  end
  it 'returns fizzbuzz for 15' do
      fb = Fizzbuzz.new(15)
      expect(fb.string).to eq('fizzbuzz')
  end
  # it 'returns fizz for 21' do
  #     fb = Fizzbuzz.new(21)
  #     expect(fb.string).to eq('fizz')
  # end
end
