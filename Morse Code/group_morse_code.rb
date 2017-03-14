require './lib/morse_class'
require './lib/Get_input'



#get a word from the user
user_word = Get_input.new
word = Morse_converter.new
user_word = user_word.get_text("What is your word?")

#convert to morse
print word.to_morse(user_word)
