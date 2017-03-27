
class Fizzbuzz

   def initialize number
      @fizzbuzz = number
   end

   def string
     x = @fizzbuzz
    case
      when x % 3 == 0 && x % 5 == 0
          "fizzbuzz"
      when x % 3 == 0
          "fizz"
      when x % 5 == 0
          "buzz"
      else
         x
    end 
  end
end


(1..100).each do |n|
  fb = Fizzbuzz.new(n)
  puts (fb.string)
end
