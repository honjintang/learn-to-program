puts "Please enter a starting year:"
start_year = gets.chomp.to_i

puts "Please enter an end year:"
end_year = gets.chomp.to_i

puts "Here are all the leap years in between your selected dates:"

(start_year..end_year).each {|year|
  next if year % 4 != 0
  next if year % 100 == 0 && year % 400 != 0
    puts year}
