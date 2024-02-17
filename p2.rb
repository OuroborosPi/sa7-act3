# Define rooms and their corresponding points
rooms = {
  "Room 1" => 5,
  "Room 2" => 10,
  "Room 3" => 15
}

total_points = 0

puts "Welcome to the Adventure Game!"
puts "You have #{total_points} points."

# Game loop
loop do
  puts "Choose a room (1-3) to enter or 'exit' to end the game:"
  input = gets.chomp.downcase
  
  # Exit the game if input is 'exit'
  break if input == 'exit'
  
  room = "Room #{input}"
  points = rooms[room] # Retrieve the number of points associated with a specific room.
  
  if points # Check to see if the room exists
    total_points += points # Add the points if it does
    puts "You entered #{room} and earned #{points} points."
  else # Let the user know its outside our rage of rooms
    puts "Invalid input! Please enter a room number (1-3) or 'exit'."
  end
end

puts "Game over! You collected a total of #{total_points} points."
