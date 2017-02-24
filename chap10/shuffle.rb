def shuffle (array)
  shuffled = []
  while array.length > 0

  random_index = rand(array.length)
  current_index = 0
  temp_array = []

  array.each{|x|
    if current_index == random_index
    shuffled << x
    else
    temp_array << x
    end
    current_index += 1
  }
    array = temp_array
end

  shuffled
end
