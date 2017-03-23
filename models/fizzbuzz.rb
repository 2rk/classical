# count to 100
class FizzBuzz

  # Counts to 100.
  # Makes an array of length 100 where each value is the fizzbuzz value.
  def to_array
    # Start with an empty array.
    array = []
    # Count from 1 to 100.
    (1..100).each do |x|
      # If the number matches any of the fizzbuzz numbers, add the string.
      if fizzbuzz? (x)
        array.push  "fizzbuzz"
      elsif  fizz? (x)
        array.push "fizz"
      elsif buzz? (x)
        array.push "buzz"
      # Otherwise just add the number to our array.
      else
        array.push x
      end
    end
    # Return the finished array of 100 values.
    array
  end

  # FizzBuzz divisible by 3 and 5
  # % is modulo division. It divides a number and returns the remainder.
  # If the remainder is 0, the number was equally divisible.
  def fizzbuzz?(x)
    x % 3 == 0 && x % 5 == 0
  end

  # Fizz divisible by 3
  def fizz?(x)
    x % 3 == 0
  end

  # Buzz divisible by 5
  def buzz?(x)
    x % 5 == 0
  end
end
