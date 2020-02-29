def bubble_sort(arr)
  loop do
    i = 1
    test = false
    while i - 1 < arr.length - 1
      if arr[i - 1] > arr[i]
        arr[i - 1], arr[i] = arr[i], arr[i - 1]
        test = true
      end
      i += 1
    end
    break unless test
  end
  arr
end

def bubble_sort_by(arr)
  loop do
    i = 1
    test = false
    while i - 1 < arr.length - 1
      result = yield(arr[i - 1], arr[i])
      if result.positive?
        arr[i - 1], arr[i] = arr[i], arr[i - 1]
        test = true
      end
      i += 1
    end
    break unless test
  end
  arr
end
