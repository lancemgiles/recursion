def merge_sort(arr)
  # array of length 1 is sorted
  return arr if arr.length == 1

  # split the array in half
  middle = arr.length / 2
  # sort the left side
  left = merge_sort(arr[0...middle])
  # sort the right side
  right = merge_sort(arr[middle...arr.length])
  # hold sorted numbers in another array
  sorted = []
  until left.empty? || right.empty?
    # until one side of the array has been completely sorted,
    # see if the first element of the left side is less than or equal to the right side
    # #shift removes the element from the side it was in and moves the smaller element into sorted array
    left.first <= right.first ? sorted << left.shift : sorted << right.shift
  end
  # add everything together
  sorted + left + right
end

test = [105, 79, 100, 110]
p merge_sort(test)
