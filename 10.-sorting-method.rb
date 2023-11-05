def alphabetize(arr, rev=false)
  arr.sort!
  if rev
    return arr.reverse!
  else
    return arr
  end
end

numbers = [1,2,3,4,5,6,7,8,9,0]

puts alphabetize(numbers, true)