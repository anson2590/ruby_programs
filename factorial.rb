=begin
*Definition:
  Factorial of a number

*Output:
 ruby factorial.rb
 Enter number
 5
 factorial of 5 is: 120
=end

   def fact(num)
     if num == 0
       1
     else
       if num > 0
         num * fact(num - 1)
       else 
        puts "no factorial for -ve number"
       end
     end   
   end
   
   puts "Enter number"
   num = gets().to_i
   puts "factorial of #{num} is: #{fact(num)}"