def check_age (age, country)
    if (age.to_i >= 18)
      puts "You can vote."
      puts "You can smoke."
      if country == 'uk'
        puts "You can drink."
      elsif age.to_i >= 21
        puts "You can drink."
        if age.to_i >= 25
          puts "You can rent a car."
        end
      end
    elsif age.to_i >= 16 && country == 'uk'
      while true
        puts "Are your parents with you?"
        answer = gets.chomp.downcase
        if answer == 'yes'
          puts "You can drink."
          break
        elsif answer == 'no'
          puts "You can do nothing."
          break
        else
          puts "Please answer yes or no."
        end
      end
    elsif age.to_i > 0
      puts "You can do nothing."
    end
end

while true
  while true
    puts "Are you from the UK or the US?"
    country = gets.chomp.downcase
    if (country == 'us') || (country== 'uk')
      break
    elsif country == 'quit'
      break
    else
      puts "Sorry, unfortunately this program only works for people from the UK or the US."
    end
  end
  puts "How old are you?"
  age = gets.chomp
  if (age == 'quit') || (country == 'quit')
    break
  elsif age.to_i <= 0
    puts "Please answer with a valid age."
  end
  check_age(age, country)
end
