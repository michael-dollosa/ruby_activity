# Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

input = ""

while input != "STOP"
  puts "Type Anything"
  input = gets.chomp
end