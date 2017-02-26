def roman_to_integer (roman_numeral)

  answer = 0

  single_letter_values =  {"M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1}

  double_letter_values = {"CM" => 900,
                            "CD" => 400,
                            "XC" => 90,
                            "XL" => 40,
                            "IX" => 9,
                            "IV" => 4}


  if single_letter_values.fetch( single_letter_values.keys.find{|key|roman_numeral[key]}, "no_key" ) == "no_key"
    puts "this is not a valid roman numeral"

else

   double_letter_values.each{|key, value|
    if roman_numeral.include?(key)
     answer = answer + value
     roman_numeral.sub!(key, "")
    end
    }

    roman_numeral.chars.each{|character|
    answer = answer + single_letter_values[character]
    }
  end
  if answer > 0
    puts answer
  else
    nil
  end
end
