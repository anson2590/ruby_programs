=begin
 *Definition:
   Binary Search Algorithm: 
      It is a more efficient search algorithm which relies on the elements in the list being sorted.
   Time Complexity = o(logn) 
   Precondition: List should be sorted

 *Output:
  ruby binary_search.rb
  true
=end

def binary_search (a,key)  # a is the array and key is the value to be found
    lo = 0
    hi= a.length-1
    
    while (lo<=hi)
        mid = lo+((hi-lo)/2)
        
        if a[mid] == key
            return true
        elsif a[mid] < key
            lo=mid+1
        else
            hi=mid-1
        end
        
    end
    
    return "Value not found in array"
end

a = [3,4,5,6,7,8,9,10]
p binary_search(a,9)