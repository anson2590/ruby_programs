=begin
 *Definition:
   swaping of two numbers without using third variable

 *Output:
  ruby swap_two_numbers.rb
  Enter first number
  10
  Enter second number
  20
  After number to swap: [20, 10]
=end

  def swap_numbers(a, b)
    a = a + b
    b = a - b
    a = a - b
    return a, b
  end

  puts "Enter first number"
  num1 = gets().to_i
  puts "Enter second number"
  num2 = gets().to_i
  puts "After number to swap: #{swap_numbers(num1, num2)}"