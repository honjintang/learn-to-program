puts "Which year were you born in?"
year = gets.chomp

puts "Which month were you born in?"
month = gets.chomp.downcase


months = %w[january february march april may june july august september october november december]

months.select {|x|
  if x == month
  month = months.index(x) + 1
end}

puts "Which day of the month were you born on?"
day = gets.chomp

right_now = Time.new
birth_day = Time.mktime(year.to_i, month.to_i, day.to_i)

years_old = (right_now - birth_day)/(60*60*24*365)
puts ''

puts "You're #{years_old.to_i}!"

years_old.to_i.times do
  puts "SPANK"
end
