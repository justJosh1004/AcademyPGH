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

#Makes fake inputs
class Fake_input
  def get_text prompt
    puts prompt
    return get_next_line
  end

  def get_number prompt
    puts prompt
    return get_next_line.to_i
  end

  def initialize
    @inputs = []
    @inputs << "Josh"
    @inputs << "27"
  end

  private
    def get_next_line
      return @inputs.shift
    end
end
