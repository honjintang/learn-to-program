class Integer
  def old_roman_numeral
    answer = ''
    letter_values = {
      "M" => 1000,
      "CM" => 900,
      "D" => 500,
      "CD" => 400,
      "C" => 100,
      "XC" => 90,
      "L" => 50,
      "XL" => 40,
      "X" => 10,
      "IX" => 9,
      "V" => 5,
      "IV" => 4,
      "I" => 1}

      num = self

      letter_values.each{|key, value|
       answer << key * (num / value)
        num = num % value
      }
    answer
  end
end

puts 14.old_roman_numeral
