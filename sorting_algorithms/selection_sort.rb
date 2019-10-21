#Selection sort
#Finds minimum element from array and puts at newly created array or can be swapped with ith element of array

arr = [100, 10, 30, 90, 40, 50, 70, 10]

def selection_sort(arr)
  len = arr.length - 1
  (0..len).each do |i|
    min_idx = i
    ((i + 1)..len).each do |j|
      min_idx = j if arr[j] < arr[min_idx]
    end
    arr[min_idx], arr[i] = arr[i], arr[min_idx]
  end
  arr
end

selection_sort(arr)