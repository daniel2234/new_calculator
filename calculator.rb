# used the determine if the user inputs a valid number, with a 0
def invalid_number?(number)
  number.to_i.to_s == number
end

# format prompt for user
def prompt(message)
  puts "==> #{message}"
end

def operation_to_message(op)
    case op
    when '1'
      'Adding'
    when '2'
      'Subtracting'
    when '3'
      'Multiplying'
    when '4'
      'Dividing'
    end
end

prompt("Welcome to Calculator! Please enter your name:")
name = ''

loop do
  name = gets.chomp
  if name.empty?
    prompt("Make sure it is a valid name")
  else
    break
  end
end

loop do # main loop
  prompt("Hello #{name}")
  number1 = ''
  loop do
    prompt("Enter the first number:")
    number1 = gets.chomp

    if invalid_number?(number1)
      break
    else
      prompt("Does not seem to be a number")
    end
  end

  number2 = ''
  loop do
    prompt("Enter the second number:")
    number2 = gets.chomp

    if invalid_number?(number2)
      break
    else
      prompt("Does not seem to be a number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1)add
    2)subtract
    3)multiply
    4)divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1,2,3 or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_i / number2.to_i
           end

  puts "The result is #{result}"

  puts "Would you like another calculation? (Y)"
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end
