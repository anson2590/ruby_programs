=begin
 *Definition:
    Inserion Sort implementation (stable)
    Time Complexity: O(n^2),In-place,stable
    Very useful for sorting nearly sorted array, very fast and effective for small size arrays
    Worst case: Array is reverse sorted, Best case: Array is already sorted (O(n) time)

 *Output:
  ruby insertion_sort.rb
  [1, 2, 3, 3, 3, 4, 12, 70, 89]
=end

def insertion_sort(a)
    for i in 1...(a.length)
        j=i
        while j>0
            if a[j-1]>a[j]
                temp=a[j]
                a[j]=a[j-1]
                a[j-1]=temp
            else
              break
            end
            j=j-1
        end
    end
    return a
end

p insertion_sort([12,3,1,2,4,70,89,3,3])