# Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100

puts "Enter a number between 0 and 100"
input = gets.chomp.to_i

if(input < 0)
  puts "Invalid Number. Please enter between 0 -1 00"
elsif (input >= 0 && input <= 50)
  puts "Your number is between 0 - 50"
elsif (input >= 51 && input <= 100)
  puts "Your number is between 51 - 100"
else
  puts "Your number is above 100"
end