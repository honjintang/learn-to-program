def dictionary_sort array

return array if arr.length <= 1

middle = arr.pop
less = arr.select{|x| x.downcase < middle.downcase}
more = arr.select{|x| x.downcase >= middle.downcase}

dictionary_sort(less) + [middle] + dictionary_sort(more)

end
