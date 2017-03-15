#Gets input from user
class Get_input
  def get_text prompt
    puts prompt
    return gets.chomp
  end

  def get_number prompt
    puts prompt
    answer = gets.chomp

    while answer.match(/\D/)
      puts "Please type numbers only, try agan: "
      answer = gets.chomp
    end
    answer.to_i
  end
end
