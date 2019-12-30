=begin
    *Definition:
    One to given number to list all Armstron numbers.

    *Description:
    371 is an Armstrong number since 3**3 + 7**3 + 1**3 = 371 (27 + 343 + 1 = 371)  

    *Output:
    ruby armstrong_number.rb
    Enter a number
    1000
    1 is Armstrong
    153 is Armstrong
    370 is Armstrong
    371 is Armstrong
    407 is Armstrong
=end

def is_armstrong(num)
    sum = 0
    d = num
    while (d != 0)
      sum = sum + (d % 10) * (d % 10) * (d % 10)
      d = d / 10
    end
    if(sum == num)
      puts "#{num} is Armstrong"
    # else
    #   puts "Not Armstrong"
    end
end

puts "Enter a number"
num = STDIN.gets.to_i
(1..num).each do |n| is_armstrong(n) end
