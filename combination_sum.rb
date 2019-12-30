=begin
 *Definition:
    Find all combinations from an array to match sum of two numbers

 *Output:
  ruby insertion_sort.rb
  [[1, 6], [2, 5], [3, 4]]
=end

 p [1, 2, 3, 4, 5, 6].combination(2).to_a.select{|comb| comb[0] + comb[1] == 7}
