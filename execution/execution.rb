def my_min(arr)
  smallest = arr.first
  arr.each do |ele|
    smallest = ele if ele < smallest
  end

  smallest

  
end
# this is an O(n) function

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list) 

def largest_contiguous_subsum(list)
  # subs = []

  # (0...list.length).each do |idx1|
  #   (0...list.length).each do |idx2|
  #     subs << list[idx1..idx2].sum
  #   end
  # end

  #two separate loops 
    #one reversing through array and another iterating normally through 
  #create hash with keys being sub arrays and values being the sum of the key
  #retrieve largest sum value

  # # subs.max
  longest_sum = 0
  current_sum = 0
  return list.max if list.all?{ |n| n < 0}
  list.each do |num|
    current_sum += num
    longest_sum = current_sum if current_sum > longest_sum 
    current_sum = 0 if current_sum < 0
  end
  longest_sum


end

list = [ -3, -6, -1, -6,]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
