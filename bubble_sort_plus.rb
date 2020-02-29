def bubble_sort(arr, result = [])
  if arr.length > 1
    i = 1
    while i - 1 < arr.length - 1
      arr[i - 1], arr[i] = arr[i], arr[i - 1] if arr[i - 1] > arr[i]
      i += 1
    end
    result.push(arr[arr.length - 1])
    bubble_sort(arr[0..arr.length - 2], result)
  else
    result.push(arr[0])
  end
  result.reverse
end

def bubble_sort_by(arr, result = [])
  if arr.length > 1
    i = 1
    while i - 1 < arr.length - 1
      comp = yield(arr[i - 1], arr[i])
      arr[i - 1], arr[i] = arr[i], arr[i - 1] if comp.positive?
      i += 1
    end
    result.push(arr[arr.length - 1])
    bubble_sort_by(arr[0..arr.length - 2], result) { |left, right| yield(left, right) }
  else
    result.push(arr[0])
  end
  result.reverse
end
