=begin
 *Definition:
  A whole number x is a perfect number, only if:
   ( x = sum_of divisors_of x (except itself) )

 *Example:
  6 is perfect number, as divisors of 6 are: 1, 2, 3 (excluding 6)
  and ( 1 + 2 + 3 = 6 )

 *Please Upvote if you Like it ^^

 *Output:
 ruby perfect_numbers_bw_range.rb
 Enter the range to find perfect numbers:
 1000
 Perfect numbers from 1 to 100 are:
 6, 28, 496
=end

def divisors x
    # array of all divisors of x except itself
    d = []
    for i in (1..x/2) do
        d << i if x%i == 0
    end
    d
end

def sum d
    # sum of all elems in array d
    s = 0
    d.each { |i| s += i }
    s
end

def perfect x
    # x is perfect or not?
    d = divisors(x)
    x == sum(d)
end

def program x
    # perfect numbers in range 1..x
    s = []
    for i in (1..x)
        s << i if perfect(i)
    end
    s
end

def main
    # the main program
    puts "Enter the range to find perfect numbers:"
    x = gets.chomp.to_i
    p = program x
    msg = "Perfect numbers from 1 to #{x.to_s} are:\n#{p.join ', '}"
end

puts main