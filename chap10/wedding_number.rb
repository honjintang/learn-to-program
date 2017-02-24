def wedding_number (number)
  numstring = ''
  if number < 0
    return 'please enter a number that isn\'t negative'
  end
  if number == 0
    return 'zero'
  end

  ones_place = %w[one two three four five six seven eight nine]
  tens_place = %w[ten twenty thirty forty fifty sixty seventy eighty ninety]
  teenagers = %w[eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]

  left = number
  write = number/1000
  left = left - write*1000

  if write > 0
    thousands = wedding_number write
    numstring = numstring + thousands + ' thousand'
    if left > 0
      numstring = numstring + ' and '
    end
  end

  write = left/100
  left = left - write*100

  if write > 0
    hundreds = wedding_number write
    numstring = numstring + hundreds + ' hundred'
    if left > 0
      numstring = numstring + ' and '
    end
  end

  write = left/10
  left = left - write*10

  if write > 0
    if (write == 1) && (left > 0)
      numstring = numstring + teenagers[left-1]
      left = 0
    else
    numstring = numstring + tens_place[write-1]
  end
    if left > 0
      numstring = numstring + ''
    end
  end

  write = left
  left = 0

  if write > 0
    numstring = numstring + ones_place[write-1]
  end

  numstring
end