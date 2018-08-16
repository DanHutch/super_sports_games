## Event user interactivity

require 'pry'

require './event'

puts "What is the year of the games?"
print "> "

year = gets.chomp.to_i

puts "Would you like to create a new event? Y/N"

create_y_n = gets.chomp

until create_y_n == "N" || create_y_n == "n" || create_y_n == "Y" || create_y_n == "y"
  puts "Would you like to create a new event? Y/N"
  create_y_n = gets.chomp
end

if create_y_n == "Y" || create_y_n == "y"
  puts "What will the new event be called?"
  print "> "
  new_name = gets.chomp
  puts "How old is the first participant?"
  print "> "
  ## Here there will need to be some provision that accounts for non-standard inputs
  ## then it will need to push the input integer into an array and ask if
  ## there are any more participants.

  Event.new("#{new_name}", )
end
