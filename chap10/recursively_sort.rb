#still trying to fix this...

def sort (array)
  rec_sort (array, [])
end

def rec_sort (unsorted, sorted)
  least = unsorted.pop
  still_unsorted = []

  unsorted.each {|x|
    if x < least
      still_unsorted << least
      least = x
    else
      still_unsorted << x
    end
  }
  sorted << least
  rec_sort (still_unsorted, sorted)
end

sort ([3, 5, 7, 1, 2])
