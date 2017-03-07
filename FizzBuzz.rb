counter = 100
100.downto(1) do |i|
  if (counter % 3 == 0 && counter % 5 == 0)
    puts "FizzBuzz"
  elsif counter % 3 == 0
    puts "Fizz"
  elsif counter % 5 == 0
    puts "Buzz"
  else
    puts counter
  end
  counter -= 1
end
