def binary_search(element, array)
  return "Not found" if array.length < 1

   middle = (array.length / 2)
  return "Found #{array[middle]}" if array[middle] == element

  if element <= array[middle]
    binary_search(element, array[0..middle - 1])
  else
    binary_search(element, array[middle + 1..-1])
  end
end

p binary_search(99, [1, 8, 16, 23, 31, 44, 56, 78, 99, 156])