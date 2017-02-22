result = []
word = "x"

puts "please enter as many words as you would like. If you press 'enter' on an empty line, your words will be returned to you in alphabetical order."

while word != ""
word = gets.chomp
result << word
end

puts result.sort
