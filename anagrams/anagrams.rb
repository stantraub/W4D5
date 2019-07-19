require "byebug"
def anagram?(word1, word2)#
  hash = Hash.new(0)

  word1.each_char { |char| hash[char] += 1 }
  word2.each_char { |char| hash[char] -= 1 }
  
  hash.all? { |_,v| v.zero? }


end

# p anagram?("gizmo", "sally")    #=> false
# p anagram?("elvis", "lives")    #=> true

def second_anagram?(word1, word2)
  # debugger
  word1.each_char do |char|
    idx = word2.chars.find_index(char)
    return false if idx == nil
    word2[idx] = ""
  end
  
  word2 == ""
end
# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

def third_anagram?(word1, word2)
  jumblesort(word1) == jumblesort(word2)
end




def jumblesort(string)
  abc = ('a'..'z').to_a
  sorted = false
  # debugger
  until sorted
    sorted = true
    (0...string.length - 1).each do |idx|
      if abc.index(string[idx]) > abc.index(string[idx + 1])
        string[idx], string[idx + 1] = string[idx + 1], string[idx]
        sorted = false
      end
    end
  end
  string
end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true


def fourth_anagram?(word1, word2)
  hash = Hash.new(0)
  hash2 = Hash.new(0)

  word1.each_char { |char| hash[char] += 1 }
  word2.each_char { |char| hash2[char] += 1 }
  
  hash == hash2

end


p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true