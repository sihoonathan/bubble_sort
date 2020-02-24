def bubble_sort(array)
  for m in (0...array.length - 1)
    sorted = false
    for i in (0...array.length-1-m)
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        sorted = true
      end
    end
    break unless sorted
  end
  array
end


def bubble_sort_by(array)
  for m in (0...array.length - 1)
    sorted = false
    for i in (0...array.length-1-m)
      if yield(array[i], array[i+1]) > 0
        array[i], array[i+1] = array[i+1], array[i]
        sorted = true
      end
    end
    break unless sorted
  end
  array
end

p bubble_sort([4,3,78,2,0,2])

p (bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
  left.length - right.length
end)


