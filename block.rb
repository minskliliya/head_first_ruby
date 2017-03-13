# def my_method(&my_block)
#   puts "We are in the method"
#   my_block.call
# end
#
# my_method do
#   puts "We are in the block"
# end
#

# def give(&my_block)
#   my_block.call("2 turtle doves", "1 partridge")
#   puts "The second calling"
# end

# def give(&my_block)
#   yield "2 turtle doves", "1 partridge"
# end
#
# give do |present1, present2|
#   puts "my method gave to me ...."
#   puts present1, present2
# end
#
# def run(&block)
#   yield
# end
#
# run { puts "braces"}
#
# def take_this
#   yield "present"
# end
#
# take_this do |thing|
#   puts "do/end block got #{thing}"
# end
#
# take_this { |thing| puts "braces block got #{thing}"}

# ["a", "b" , "c"].each { |param| puts param}
#
# def total(prices)
#   amount = 0
#   prices.each do |price|
#     amount += price
#   end
#   amount
# end
#
# def refund(prices)
#   amount = 0
#   prices.each do |price|
#     amount -= price
#   end
#   amount
# end
#
# def show_discounts(prices)
#   prices.each do |price|
#     amount_off = price / 3.0
#     puts format("Your discount: $%.2f" , amount_off)
#   end
# end
#
# prices = [3.99, 25.00, 8.99 ]
#
# puts format("%.2f", total(prices))
# puts format("%.2f", refund(prices))
# show_discounts(prices)

# def pig_latin(words)
#
#   original_length = 0
#   new_length  = 0
#
#   words.each do |word|
#     puts "Original word: #{word}"
#     original_length += word.length
#     letters = word.chars
#     first_letter = letters.shift
#     new_word = "#{letters.join}#{first_letter}ay"
#     puts "Pig Latin word: #{new_word}"
#     new_length += new_word.length
#   end
#
#   puts "Total original length: #{original_length}"
#   puts "Total Pig Latin length: #{new_length}"
#
# end
#
# my_words = ["blocks", "totally", "rock"]
# pig_latin(my_words)
#
# def one_two
#   result = yield(1,3)
#   puts result
# end
#
# one_two do |param1, param2 |
#   param1 + param2
# end
#
# def make_casserole
#   puts "Preheat oven to 375 degrees"
#   ingredients = yield
#   puts "Place #{ingredients} in dish"
#   puts "Bake for 20 minutes"
# end
#
# make_casserole do
#   "rice, broccoli, and chiken"
# end
#
# make_casserole do
#   "noodles, celery , and tuna"
# end
#
#
# p [1,2,3,4,5].find_all { |number| number.even? }
# p [1,2,3,4,5].find_all { |number| number.odd? }
