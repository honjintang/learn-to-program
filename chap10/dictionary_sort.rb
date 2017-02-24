def dictionary_sort (array)

 capitals_only = []
 all_downcase = []

 return array if array.length <= 1

 array.each{|item| if item.downcase != item
                    capitals_only << item end}
 array.each{|item| all_downcase << item.downcase}


 middle = all_downcase.pop
 left = all_downcase.select{|x| x < middle}
 right = all_downcase.select{|x| x >= middle}

 sorted_downcase = dictionary_sort(left) + [middle] + dictionary_sort(right)

 sorted_downcase.map! {|item| if capitals_only.include?(item.to_s.capitalize)
                                item.capitalize
                              else
                                item
                              end}

end

dictionary_sort (["ball", "ant", "top", "Aardvark", "Zoo"])
