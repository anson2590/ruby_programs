=begin
 *Definition:
   Fibonacci series

 *Output:
  ruby fibonacci_series.rb
  Enter number to print fibonacci series
  6
  Fibonacci series:
  1 1 2 3 5 8
=end

  def fibonacci(n)
    return  n  if n <= 1 
    fibonacci( n - 1 ) + fibonacci( n - 2 )
  end

  puts "Enter number to print fibonacci series"
  num = gets().to_i
  puts "Fibonacci series:"
  (1..num).each { |n| puts fibonacci(n) }