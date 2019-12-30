=begin
 *Definition:
   radix sort or bucket sort
   Time complexity => O(d*(n+b))
     - d => number of digits (ex: no of digits 3, repeated no of digits present)
     - n => total numbers present
     - b => base, buckets taken based on bucket (ex: in this array base is 10)

 *Output:
  ruby radix_sort.rb
  [5, 9, 10, 36, 38, 139, 179]
=end

#the function sorts input arr by the currently significant digit
def counting_sort(input_arr, exp = 0)
    count_arr = Array.new(10, 0)
    result = Array.new(input_arr.size)
    
    m = 10**(exp+1)
    n = 10**exp 
    
    #count occurence of currently significant digit
    #if exp == 0 than 5 is the currently significant digit in 135
    input_arr.each do |item|
        signif_number = (item%m)/n
        count_arr[signif_number] += 1
    end

    #modify count_arr to show actual index
    for i in 1...10 
        count_arr[i] = count_arr[i-1] + count_arr[i]
    end
    
    #creat output array
    i = input_arr.size - 1
    until i < 0 do
        item = input_arr[i]
        signif_number = (item%m)/n
        count_arr[signif_number] -= 1
        result[count_arr[signif_number]] = item
        i -= 1
    end
    result
end

def radix_sort(arr)
    #find the maximum number to know number of digits
    max_num = arr.max # returns max value of array ex: 179

    #find up to what exponenent the nums in array are
    exp = 0
    until max_num == 0 do
        exp += 1
        max_num = max_num/10
    end
    
    for i in 0...exp do
        arr =  counting_sort(arr, i)
    end
    
    arr
end

p radix_sort [9, 179, 139, 38, 10, 5, 36]