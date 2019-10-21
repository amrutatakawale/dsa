#Insertion sort
#Inserts the elements in sorted array

#arr = [12, 11,13, 5, 6]
arr = [100, 10, 30, 90, 40, 50, 70, 10]

def insertion_sort(arr)
  l = arr.length - 1
  (1..l).each do |i|
    j = i - 1
    key = arr[i]
    while j>=0 && key < arr[j]
      arr[j+1] = arr[j]
      j = j -1
    end
    arr[j+1] = key
  end
  arr
end

insertion_sort(arr)