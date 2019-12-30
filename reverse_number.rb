=begin
 *Definition:
   reverse of a number

 *Output:
  ruby reverse_number.rb
  Enter number
  54321
  reversed number is: 12345
=end

puts "Enter number"
num = gets().to_i;
rev = 0

while num > 0 do
    rev = rev * 10
    rev = rev + (num % 10)
    num = num / 10       
end

puts "reversed number is: #{rev}"