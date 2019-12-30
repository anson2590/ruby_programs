=begin
    *Definition:
    One to given number to list all leap years.

    *Output:
    ruby armstrong_number.rb
    Enter a number
    1000
=end

def checkLeapYear(year)
    if( (year % 400==0)||(year%4==0 && year%100!=0) )
        p "#{year} is leap year";
    # else
    #     return 0;
    end    
end

puts "Enter a number"
num = STDIN.gets.to_i
(1..num).each do |n| checkLeapYear(n) end