
class Fizzbuzz

   def initialize number
      @fizzbuzz = number
   end

   def string
     x = @fizzbuzz
     if x % 3 == 0 && x % 5 == 0
       return "fizzbuzz"
     elsif x % 3 == 0
       return "fizz"
     elsif x % 5 == 0
       return "buzz"
     else
       return x
     end
   end

end


(1..100).each do |n|
  fb = Fizzbuzz.new(n)
  puts (fb.string)
end
