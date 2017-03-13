
def my_method(&block1)
  puts "We are in the method, about to invoke your block!"
  block1.call
  puts "We are back in the method!"
end

my_method do
  puts "We're in the block"
end
