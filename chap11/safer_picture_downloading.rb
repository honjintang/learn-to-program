Dir.chdir '/Users/vivientang/Pictures/chrispinechap11'
pic_names = Dir['/Users/vivientang/Desktop/chris_pine_test_photos/**/*.jpg']

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "
pic_number = 1

pic_names.each{|name|
  print '.'

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist?(new_name)
    puts "sorry that batch name already exists."
    exit
  else
    File.rename name, new_name
  end

  pic_number += 1}

  puts
  puts "All done!"
