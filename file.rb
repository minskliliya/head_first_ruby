# review_file = File.open("reviews.txt")
#
# lines  = review_file.readlines
# puts "Line 4: #{lines[3]}"
# puts "Line 1: #{lines[0]}"
#
# review_file.close
#
#
# lines = []
#
#  File.open("reviews.txt") do |review_file|
#    lines  = review_file.readlines
# end
#
# puts lines.length

# # 1
# def yield_number
#   yield 4
# end
#
# array = [1,2,3]
# yield_number { |number| array << number }
#
# p array
#
# # 2
# sum = 0
#
# [1,2,3].each { |number| sum += number }
#
# puts sum

lines = []

 File.open("reviews.txt") do |review_file|
   lines  = review_file.readlines
end

# relevant_lines = []
#
# lines.each do |line|
#   if line.include?("Truncated")
#     relevant_lines << line
#   end
# end

relevant_lines = lines.find_all { |line| line.include?("Truncated")}
#puts relevant_lines

reviews = relevant_lines.reject { |line| line.include?("--")  }
#puts reviews

def find_adjective(string)
  words = string.split(" ")
  index = words.find_index("is")
  words[index+1]
end

adjectives = reviews.map do |review|
  adjective = find_adjective(review)
  "'#{adjective.capitalize}'"
end

puts "The critics agree, Truncated is:"
puts adjectives
