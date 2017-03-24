require 'rspec'
require_relative "../../models/sarahb_fizzbuzz"

describe 'fizzbuzz' do
  it " returns 1" do
      fb = Fizzbuzz.new(1)
    expect(fb.string).to eq(1)
  end
  it "returns fizz for a multiple of 3" do
      fb = Fizzbuzz.new(3)
      expect(fb.string).to eq('fizz')
  end
  it 'returns buzz for a multiple 5' do
      fb = Fizzbuzz.new(5)
      expect(fb.string).to eq('buzz')

  end
  it 'returns fizzbuzz for multiples of 3 and 5' do
      fb = Fizzbuzz.new(15)
      expect(fb.string).to eq('fizzbuzz')
  end

end

puts Fizzbuzz.new(15).string
