def bubble_sort(array)
  for m in (0...array.length - 1)
    $sorted = false
    for i in (0...array.length-1-m)
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        $sorted = true
      end
    end
    break unless $sorted
  end
  array
end

p bubble_sort([1, 2, 3])
p bubble_sort([4,3,78,2,0,2])

