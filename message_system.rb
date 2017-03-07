inbox = []  #sets up the array for the message

message_box = true  #makes a boolean variable for the main loop
while message_box == true  #while this is true, loop will keep on going
  puts "Would you like to (s)ave a message, (r)etrieve a message, or e(x)it?"
  what_to_do = gets.downcase.chomp  #takes their input and makes sure its in lowercase
  
  if what_to_do == "s"
    puts "What is your message?"
    inbox << gets.chomp  #puts their message at the end of the array
    puts "Your message ID for this message is #{inbox.length - 1}."  #shows their message ID, which is the positoin in the array
  elsif what_to_do == "r"
    puts "What is the message ID of the message that you would like to retrieve?"
    puts inbox[gets.to_i]  #picks their message out of the array
  elsif what_to_do == "x"
    puts "Thank you for using the messaging system. Good bye."
    message_box = false  #changes the boolean to false and ends the loop
  else  #if they didn'e give an s, r, or x, tell them to try again
    puts "#{what_to_do} was not a valid choice.  Please try again."
  end
end
