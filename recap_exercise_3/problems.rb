
# def no_dupes?(arr)
#     counter = Hash.new(0)
#     arr.each {|ele| counter[ele] += 1}
#     uniques = counter.select! { |k, v| v == 1}
#     p uniques.keys
# end

# no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
# no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
# no_dupes?([true, true, true])            # => []

# def no_consecutive_repeats?(arr)
#     (0...arr.length - 1).each do |i|
#         return false if arr[i] == arr[i + 1]
#     end
# return true
# end

# p no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
# p no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
# p no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
# p no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
# p no_consecutive_repeats?(['x'])                              # => true

# def char_indices(str)
#     indices = Hash.new { |h, k| h[k] = [] }
#     str.each_char.with_index { |char, idx| indices[char] << idx}
#     indices
# end

# p char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
# p char_indices('classroom')     # => {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}

# def longest_streak(str)
#     streak = ""
#     longest = ""

#     (0...str.length).each do |i|
#         if str[i] == str[i - 1] || i == 0
#             streak += str[i]
#         else
#             streak = str[i]
#         end
#         longest = streak if streak.length >= longest.length
#     end
#     longest
# end

# p longest_streak('a')           # => 'a'
# p longest_streak('accccbbb')    # => 'cccc'
# p longest_streak('aaaxyyyyyzz') # => 'yyyyy
# p longest_streak('aaabbb')      # => 'bbb'
# p longest_streak('abc')         # => 'c'

# def is_prime?(num)
#     if num < 2
#         return false
#     end
#     (2...num).each do |factor|
#         if num % factor == 0
#             return false
#         end
#     end
#     true
# end

# def bi_prime?(num)

#     primes = []

#     (0...num).each do |factor|                    # NOT DONE!!!!!!!!!!!!!
#         if is_prime?(factor)
#             primes << factor
#         end
#     end
#     if primes.length == 2 || (primes.length == 1 && primes[0] * primes[0] == num)
#         return true
#     else
#         return false
#     end
# end

# p bi_prime?(14)   # => true
# p bi_prime?(22)   # => true
# p bi_prime?(25)   # => true
# p bi_prime?(94)   # => true
# p bi_prime?(24)   # => false
# p bi_prime?(64)   # => false

# def vigenere_cipher(message, keys)
#     alphabet = "abcdefghijklmnopqrstuvwxyz"

# end

# def caesar_cipher(num)
#     alphabet = "abcdefghijklmnopqrstuvwxyz"
#     new_str = ""

#     self.each_char do |char|
#         old_idx = alphabet.index(char)
#         new_idx = old_idx + num
#         new_char = alphabet[new_idx % 26]
#         new_str << new_char
#     end
#     return new_str
# end
# end

# p vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
# p vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
# p vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
# p vigenere_cipher("zebra", [3, 0])            # => "ceerd"
# p vigenere_cipher("yawn", [5, 1])             # => "dbbo"

def multiply(a, b)
    return 0 if a == 0 || b == 0

    multiply(a) * multiply(b)
end

p multiply(3, 5)        # => 15
p multiply(5, 3)        # => 15
p multiply(2, 4)        # => 8
p multiply(0, 10)       # => 0
p multiply(-3, -6)      # => 18
p multiply(3, -6)       # => -18
p multiply(-3, 6)       # => -18

# def lucas_sequence(num)
#     arr = [2, 1]
#     return [] if num == 0
#     return 1 if num == 2

#     lucas = lucas_sequence(num - 1) + lucas_sequence(num - 2)
#     arr << lucas
# end

# lucas_sequence(0)   # => []
# lucas_sequence(1)   # => [2]    
# lucas_sequence(2)   # => [2, 1]
# lucas_sequence(3)   # => [2, 1, 3]
# lucas_sequence(6)   # => [2, 1, 3, 4, 7, 11]
# lucas_sequence(8)   # => [2, 1, 3, 4, 7, 11, 18, 29]

