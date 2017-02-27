def grandfather_clock some_proc

  #convert hours to 12 hour format
  current_hour = Time.new.hour
  if current_hour == 0
    current_hour = current_hour + 12
  elsif current_hour > 12
    current_hour = current_hour - 12
  end

#call proc the number of hours passed
  current_hour.times do
  some_proc.call
  end

end

#dong proc
dong_proc = Proc.new do
  puts "DONG!"
end

grandfather_clock dong_proc
