# Given a sorted array of n unique integers where each integer is in the range from 0 to m-1 and m > n.
# Find the smallest number that is missing from the array.

#Algorithm: Binary Search (Compare elements with indexes and then decide)
#Time-complexity: O(logn), Auxiliary-space: O(1)
# Output:
# ruby smallest_missing_number.rb
# 4 
# 3


#recursive

        #Driver function
def driver_func(a)
    lo=0
    hi=a.length-1
    p smallest_missing(a,lo,hi)
end

    #Algorithm
def smallest_missing(a,lo,hi)
    if lo>hi
        return hi+1
    end
    if a[lo] != lo
        return lo
    end
    mid= lo+(hi-lo)/2
    if a[mid]>mid
        return smallest_missing(a,lo,mid)
    else
        return smallest_missing(a,mid+1,hi)
    end
end
 
driver_func([0, 1, 2, 3]) #=> 4
driver_func([0, 1, 2, 5]) #=> 3