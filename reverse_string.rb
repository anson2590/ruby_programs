=begin
 *Definition:
   reverse of a string

 *Output:
  ruby reverse_string.rb
  Enter string to reverse
  anson
  reverse string is: nosna
=end

  def reverse_string(str)
    newstr= ' '
    for  i in  1..str.length
      newstr+=str[str.length - i]
    end
    newstr
  end

  puts "Enter string to reverse"
  string = gets().chomp
  puts "reverse string is: #{reverse_string(string)}"