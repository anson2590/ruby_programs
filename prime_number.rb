=begin
 *Definition:
   Finding given number is prime number

 *Output:
  ruby prime_number.rb
  Enter number to find is prime number
  7
  Is prime number: true
  
  ruby prime_number.rb
  Enter number to find is prime number
  4
  Is prime number: false
=end

  def prime_number(num)
    n = 2
    while n < num
      return false if num % n == 0
      n += 1
    end
    true
  end

  puts "Enter number to find is prime number"
  num = gets().to_i
  puts "Is prime number: #{prime_number(num)}"