# rubocop:disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
def bubble_sort(arr)
  i = 1
  test = false
  while i - 1 < arr.length - 1
    if arr[i - 1] > arr[i]
      arr[i - 1], arr[i] = arr[i], arr[i - 1]
      test = true
    end
    i += 1
    i = 1 and test = false and redo if i == arr.length && test == true
    break if i == arr.length && test == false
  end
  i
end

def bubble_sort_by(arr)
  i = 1
  test = false
  while i - 1 < arr.length - 1
    result = yield(arr[i - 1], arr[i])
    if result.positive?
      arr[i - 1], arr[i] = arr[i], arr[i - 1]
      test = true
    end
    i += 1
    i = 1 and test = false and redo if i == arr.length && test == true
    break if i == arr.length && test == false
  end
  arr
end
# rubocop:enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
