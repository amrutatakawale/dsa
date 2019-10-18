#sorted in descending order
#compares adjecent elements
#if elements gets swapped then again algorithm repeats, starts from first element
#requires one more iteration just to check array is sorted

nums = [1,4,3,4,2,5]

def bubble_sort(array)
   n = array.length
   swap = true
   while swap do
   	puts ""
     swap = false
     (n - 1).times do |i|
       if array[i] < array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
     	  swap = true
       end
     end
   end
   p array
end

bubble_sort(nums)