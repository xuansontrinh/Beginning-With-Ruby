def fibs n
  result = []
  i0 = 1
  i1 = 1
  (0...n).each do |i|
    result << i0
    temp = i0
    i0 = i1
    i1 += temp
  end
  result
end

def fibs_rec n, arr
  return arr[n] if (arr[n])
  if (0..1) === n
    arr[n] = 1
  else
    arr[n] = fibs_rec(n-1, arr) + fibs_rec(n-2, arr)
  end
  return arr[n]
end
