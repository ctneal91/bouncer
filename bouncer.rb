def check_age (age)
  if age.to_i >= 18
    puts "You can vote."
    puts "You can smoke."
    if age.to_i >= 21
      puts "You can drink."
      if age.to_i >= 25
        puts "You can rent a car."
      end
    end
  elsif age.to_i > 0
    puts "You are still a minor. Leave."
  end
end

while true
  puts "How old are you?"
  age = gets.chomp
  check_age (age)
  if age == 'quit'
    break
  end
end
