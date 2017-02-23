def old_roman_numeral (num)
  answer = ''
  letter_values = {
    "M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1}

letter_values.each{|key, value|
    result = num / value
    if result > 0
      answer = answer + (key * result)
      num = num - (value * result)
    end}
    answer
end
