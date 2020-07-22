array = (1..100).to_a

array.each do |number|
  if number % 3 == 0 && number % 5 != 0
   p number.to_s.replace("Fizz")
 elsif number % 5 == 0 && number % 3 != 0
   p number.to_s.replace("Buzz")
 elsif number % 3 && number % 5 == 0
   p number.to_s.replace("Fizzbuzz")
 else
   p number
 end
end
