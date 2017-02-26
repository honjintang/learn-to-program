birthdates = {}
File.read('birthdays.txt').each_line { |line|
  line = line.chomp}

first_comma = 0
while line[first_comma] != ',' && first_comma < line.length
  first_comma += 1
end

name = line[0..(first_comma - 1)]
date = line[-12..-1]

birthdates[name] = date
end

puts "Who's birthday would you like to know?"
name = gets.chomp
date = birthdates[name]

if date == nil
  puts "I don't know that birthday"
else puts date[0..5]
end
