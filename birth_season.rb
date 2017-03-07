puts "What month were you born?"
month = gets.chomp.upcase

case month
when  "MARCH", "APRIL", "MAY"
  puts "You were born in the Spring!"
when "JUNE", "JULY", "AUGUST"
  puts "You were born in the Summer!"
when "SEPTEMBER", "OCTOBER", "NOVEMBER"
  puts "You were born in the Fall!"
when "DECEMBER", "JANUARY", "FEBRUARY"
  puts "You were born in the Winter!"
else
  put "The month you put in was not recognized.  Please be sure to type out the entire month and that it is spelled correctly"
end
