puts "Welcome to 'Get My number'!"
print "What is your name?"
name = gets.chomp
puts "I've got a randim number between 1 and 100."
puts "Can you geuss it?"

target  = rand(100) + 1
number_guess = 0
guesses_it = false

#while number_guess < 10
until number_guess == 10 || guesses_it
  puts "You've got #{10 - number_guess} geusses left"
  puts "Make a guess"
  guess = gets.to_i

  if guess < target
    puts "Oops. Your guess was LOW!"
  elsif guess > target
    puts "Oops. Your guess was HIGH!"
  else
    puts "Good job #{name}!"
    puts "Your guess my number in #{number_guess} guesses"
    guesses_it = true
  end
  number_guess +=1
end

unless guesses_it
  puts "Sorry. You didn't get my number. It was #{target}!"
end


# puts 'Welcome, #{input}'
# puts input.inspect
# p input
# puts "first", "second", "third"
# puts "The answer is #{6 * 7}."
# puts "\"It's ok,\" he said"
# puts 42.methods
# puts "hello".methods
