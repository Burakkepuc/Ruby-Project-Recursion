def merge_sort(arr)
  return if arr.length < 2 # base case

  # Sort the left half
  mid = arr.length / 2
  left = arr[0..mid - 1]
  right = arr[mid..-1]

  merge_sort(left)
  merge_sort(right)
  merge(arr, left, right)
end

def merge(arr, left, right)
  i = j = k = 0 # indices-pointers
  while i < left.length && j < right.length
    if left[i] <= right[j]
      arr[k] = left[i]
      i += 1
    else
      arr[k] = right[j]
      j += 1
    end
    k += 1
  end
  while i < right.length
    arr[k] = left[i]
    i += 1
    k += 1
  end
  while j < right.length
    arr[k] = right[j]
    j += 1
    k += 1
  end
  arr
end

p merge_sort([4, 2, 1, 6, 8, 5, 3, 7])
