puts "Hi there sonny. How are you?"
while true
  user_input = gets.chomp

  if user_input != user_input.upcase
    puts "HUH?! SPEAK UP, SONNY!"
  else
    puts "NO, NOT SINCE 19#{rand(30..50).to_s}!"
  end

  if user_input == "BYE"
    puts "BYE HUN"
    break
  end

end
