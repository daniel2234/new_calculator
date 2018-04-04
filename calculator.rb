
puts "Enter the first number"
number1 = gets.chomp

puts "Enter the second number"
number2 = gets.chomp

puts "What would you like to do? 1)add 2)subtract 3)multiply 4)divide"
choice = gets.chomp

answer = if choice == '1'
           number1.to_i + number2.to_i
         elsif choice == '2'
           number1.to_i - number2.to_i
         elsif choice == '3'
           number1.to_i * number2.to_i
         else
           number1.to_i / number2.to_i
         end

puts "The result is #{answer}"
