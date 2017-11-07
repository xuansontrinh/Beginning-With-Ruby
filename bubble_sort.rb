def bubble_sort arr
  (0...(arr.length - 1)).each do |i|
    (i...arr.length).each do |j|
      if arr[i] > arr[j]
        arr[i], arr[j] = arr[j], arr[i]
      end
    end
  end
  arr
end

def bubble_sort_by arr
  (0...(arr.length - 1)).each do |i|
    (i...arr.length).each do |j|
      if (yield arr[i], arr[j]) > 0
        arr[i], arr[j] = arr[j], arr[i]
      end
    end
  end
  arr
end
