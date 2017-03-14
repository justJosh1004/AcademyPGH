class Morse_converter
def initialize
  @alpha_to_morse = { "a" => ".-", "b" => "-...", "c" => "-.-.", "d" => "-..",
  	                 "e" => ".", "f" => "..-.", "g" => "--.", "h" => "....",
  	                 "i" => "..", "j" => ".---", "k" => "-.-", "l" => ".-..",
  	                 "m" => "--", "n" => "-.", "o" => "---", "p" => ".--.",
  	                 "q" => "--.-", "r" => ".-.", "s" => "...", "t" => "-",
  	                 "u" => "..-", "v" => "...-", "w" => ".--", "x" => "-..-",
  	                 "y" => "-.--", "z" => "--..", " " => " ", "1" => ".----",
                     "2" => "..---", "3" => "...--", "4" => "....-",
                     "5" => ".....", "6" => "-....", "7" => "--...",
  	                 "8" => "---..", "9" => "----.", "0" => "-----"}
end

#split string up to its letters
def to_morse(what_we_want)
  #letters = what_we_want.split("")
  word_in_morse = ""
  what_we_want.downcase.each_char do |current_letter|
    word_in_morse += @alpha_to_morse[current_letter] + " "
  end
  word_in_morse
end

end
