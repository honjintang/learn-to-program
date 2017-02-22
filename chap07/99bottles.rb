bottles = 99

while bottles > 0
puts "#{bottles} bottle#{bottles == 1? nil : 's'} of beer on the wall"
puts "Take one down and pass it round"
bottles -= 1
puts "#{bottles} bottle#{bottles == 1 ? nil : 's'} of beer on the wall"
end
