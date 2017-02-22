header = "Table of Contents"

chapters = [["Getting started", 1], ["Numbers", 9], ["Letters", 13]]

puts header.center(50)
puts ""

chapter_number = 1

chapters.each{|chapter|
  name = chapter[0]
  page = chapter[1]

  start = 'Chapter ' + chapter_number.to_s + ': ' + name
  ending = 'page ' + page.to_s

  puts start.ljust(25) + ending.rjust(25)
  chapter_number += 1}
