while true

  puts "What is the length of your garden box?"
  length = gets.to_i

  puts "What is the idth of your garden box?"
  width = gets.to_i

  area = length * width
  perimeter = 2 * (length * width)

  puts "The area of you garden box is #{area} and it has a perimeter of #{perimeter}."

  puts "Are you planting carrots, corn, or beets?"
  produce = gets.downcase.chomp

  if (produce != "carrots" && produce != "corn" && produce != "beets")
    puts "The plant, #{produce}, was not recognized. Please make sure you spelled the plant correctly or choose another plant."
  else
    if produce == "carrots"
      num_carrots = 16 * (area / 16)
      puts "You can plant #{num_carrots} carrot plants"
    elsif produce == "corn"
      num_corn = 3 * (area / 16)
      puts "You can plant #{num_corn} corn plants"
    elsif produce == "beets"
      num_beets = 9 * (area / 16)
      puts "You can plant #{num_beets} beet plants"
    end
  end

  puts "Do you want to try again? Y/N"
  response = gets.downcase.chomp

  if response =="n"
    return
  end

end
