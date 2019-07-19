def two_sum?(arr, target)
  arr.each do |ele|
    arr.each do |ele2|
      return true if ele + ele2 == target && ele != ele2
    end
  end
  false
end

# arr = [0, 1, 5, 7]
# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target)
  hash = Hash.new(0)

  arr.each do |num|
    hash[num] = num
  end
  arr.each do |num|
    compliment = target - num 
    return true if hash.has_key?(compliment)
  end
  false
end



# def quick_sort(arr)

#   return [] if arr.empty?
#   pivot = arr.first

#   left = arr.select{ |ele| pivot <=> ele != -1 } 
#   right = arr.select{ |ele| pivot <=> ele == -1 }

#   quick_sort(left) + [pivot] + quick_sort(right)


# end

arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false
