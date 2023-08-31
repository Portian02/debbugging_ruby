arr = []

arr1 = [5]

arr2 = [5, 4, 3, 2,1]

def bubble_sort(arr)
    
  for i in 0..arr.length
        for j in 0..arr.length  - 2
            if arr[j] > arr[j + 1]   
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
            end
        end
    end
    arr
end

p bubble_sort(arr2)