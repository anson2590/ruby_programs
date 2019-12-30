=begin
 *Definition:
   count words in given string

 *Output:
  ruby count_words.rb
  Enter string to count words
  Hello World!
  words in given string: 2
=end

  def words_count(str)
    count=1
    for i in 1..str.length
	    if (str[i] == ' ')
	      count+=1
	    end
    end
    count
  end

  puts "Enter string to count words"
  string = gets().chomp
  puts "words in given string: #{words_count(string)}"