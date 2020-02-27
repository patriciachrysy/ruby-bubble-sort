def bubble_sort(arr)
    loop do
        i = 0
        test = false
        while i < arr.length-1
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i+1], arr[i]
                test = true
            end
            i += 1
        end 
        break if !test
    end
    return arr
end
