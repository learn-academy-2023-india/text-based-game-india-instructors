# Text-based Game Challenge
puts '
▒█▀▀█ █▀▀█ █▀▀ ░░ ▀▀█▀▀ █▀▀ █▀▀█ █▀▄▀█ ░▀░ █▀▀▄ █▀▀█ █░░ 
▒█▄▄█ █▄▄█ █░░ ▀▀ ░▒█░░ █▀▀ █▄▄▀ █░▀░█ ▀█▀ █░░█ █▄▄█ █░░ 
▒█░░░ ▀░░▀ ▀▀▀ ░░ ░▒█░░ ▀▀▀ ▀░▀▀ ▀░░░▀ ▀▀▀ ▀░░▀ ▀░░▀ ▀▀▀
'

# method to display ASCII art
def display_ascii
  File.readlines('pac.txt') do |line|
    line
  end
end

# method call to display image
puts display_ascii

# display greeting
puts 'Welcome to Pac-Terminal: Pac-Man in the Terminal'
puts 'Enter your name'
player_name = gets.chomp.capitalize

# variable to show starting point
lives = 3

puts "Current Status for #{player_name}"
puts "Lives: #{lives}"

# options for user to play
while lives > 0
  puts "Which direction would you like to move"
  puts "Type left, right, up, or down"

  movement = gets.chomp.downcase

  if movement == "up"
    puts "Blinky attacked you! Lose a life"
    lives -= 1
    puts "Lives: #{lives}"
  end
end