# Write code to keep track of the score of a game of bowling.
# It should have two methods: roll which takes in the number of pins knocked down, and score which is called at the end and returns the total game score.

# Potential first step
# The game is 1 player, 10 pins, 2 tries to knock them down, one frame
# * The code asks the user how many they knocked down the first try
# * The code asks the user how many they knocked down the second try
# * The code returns the sum as the total score

# Potential second step:
# The game is 1 player, 10 pins, 2 tries to knock them down, two frames
# * The code asks the user how many they knocked down on the first try
# * The code asks the user how many they knocked down on the second try
# * the code returns the sum for the frame, and the total score is the sum of both frames

# Potential third step:
# * Add a third frame

# bowling app

puts "Welcome to the Bowling Calculator"

# Frame 1
index = 1
total = 0
while index <= 10
  puts "Frame #{index}! 10 pins left\nEnter your first roll score:"
  first_roll = gets.chomp.to_i
  if first_roll == 10
    puts "Strike!"
  end
  puts "#{10 - first_roll} pins left!\nEnter your second roll score:"
  second_roll = gets.chomp.to_i
  frame_score = first_roll + second_roll
  if frame_score > 10
    puts "Too many pins!"
    break
  end
  total += frame_score
  puts "Your score this frame is: #{frame_score}."
  puts "Your total after #{index} frame(s) is: #{total}"
  index += 1
end
