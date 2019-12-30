=begin
 *Definition:
   Linear Search Algorithm: 
      It is best when the data is less and is unsorted.
   
 *Output:
  ruby linear_search.rb
  "3 at index 6"
=end

# Scenario 1
def linear_search(array, key)
    if array.index(key).nil?
        return -1
    else
        return "#{key} at index #{array.index(key)}"
    end
end
  
  
  arr = [7, 6, 25, 19, 8, 14, 3, 16, 2, 0]
  key = 3
  p linear_search(arr, key)

# Scenario 2
def linear_search(array, key)
    i = 0
    while i < array.length
        if array[i] == key
          return "#{key} at index #{array.index(key)}"
        end
        i+=1
      end
      return -1
  end
  
  arr = [7, 6, 25, 19, 8, 14, 3, 16, 2, 0]
  key = 3
  p linear_search(arr, key)