

def check_age (age)
  if age >= 18
    puts "You can vote."
    puts "You can smoke."
  elsif age >= 21
    puts "You can drink."
  elsif age >= 25
    puts "You can rent a car."
  else
    puts "You are still a minor. Leave."
  end
end

puts "How old are you?"
age = gets.chomp.to_i
check_age (age)
