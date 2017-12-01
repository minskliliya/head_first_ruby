lines = []

 File.open("votes.txt") do |file|
   lines  = file.readlines
end

puts "test"
array_new = {}

arrays = [1,2,2,3,4,4,4,5,5,5,5,5]
arrays.each do |array|
  if array_new[array]
    array_new[array] += 1
  else
    array_new[array] = 1
  end
end

p array_new

votes = {}
lines.each do |line|
  name = line.chomp
  if votes[name]
    votes[name] += 1
  else
    votes[name] = 1
  end
end

p votes

votes1 = Hash.new(0)
lines.each do |line|
  name = line.chomp
  votes1[name] += 1
end

p votes1
