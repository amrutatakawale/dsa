#Quick sort algorithm
#Selects pivot element
#elements lesser than pivot will be at left and greater than pivot will be at right side
#Pivote will be placed at right poision post partition
#Again steps repeats for every sub-array

arr = [1,4,3,4,2,5]

#arr = [70, 80, 30, 90, 40, 50, 80]

def quick_sort(arr, low, high)
  if low < high
    pi = partition(arr, low, high)
    quick_sort(arr, low, pi-1) #sort left of pivot
    quick_sort(arr, pi+1, arr.length-1)
  end
end

def partition(arr, low, high)
  pivot = arr[high]
  i = low - 1
  j = low
  (low..(high-1)).each do |j|
    if arr[j] < pivot
      i = i + 1
      arr[j], arr[i] = arr[i], arr[j]  
    end
  end
  p "elements after swapping except pivot"
  p arr
  p "swap pivot"
  arr[i+1], arr[high] = arr[high], arr[i+1]
  p arr
  return i + 1
end 

quick_sort(arr, 0, arr.length-1)

