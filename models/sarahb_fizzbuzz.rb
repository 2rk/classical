
class Fizzbuzz

   def initialize number
      @fizzbuzz = number
   end

   def string
     x = @fizzbuzz
     if x % 3 == 0 && x % 5 == 0
       return "fizz"
     elsif x == 5
       return "buzz"
     elsif x == 15
       return "fizzbuzz"
     else
       return x
     end
   end

end

#  if x % 3 == 0 && x % 5 == 0
#    puts "Fizzbuzz!"
#  elsif x % 3 == 0
#    puts "Fizz"
#  elsif x % 5 == 0
#    puts "Buzz"
#  else
#    puts x
#  end
