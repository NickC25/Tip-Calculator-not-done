print "Please enter restaurant bill without tip in numbers. NO LETTERS OR WORDS ALLOWED!!" "\n"
bill = gets.chomp.to_f
until bill > 0
  print "Invalid input, please enter a valid bill amount" "\n"
  bill = gets.chomp.to_f
end

ten_percent = 1.10
fifteen_percent = 1.15
twenty_percent = 1.20
lookup_hash={"1"=>ten_percent, "2"=>fifteen_percent, "3"=>twenty_percent}
print "Please type EXACTLY one of the following options for adding a tip: '\n'
For 10% please type EXACTLY: '1' '\n'
For 15% please type EXACTLY: '2' '\n'
For 20% please type EXACTLY: '3' '\n'"
tip = gets.chomp
x = lookup_hash[tip]
valid_answers = ['1', '2', '3']
until valid_answers.include?(tip)
    puts "not a valid input, please enter 1 for 10%, 2 for 15%, or 3 for 20%"
    tip = gets.chomp
end
if tip == "1"
  print "Great, you have chosen 10%" "\n"
elsif tip == "2"
  print "Great, you have chosen 15%" "\n"
elsif tip == "3"
  print "Great, you have chosen 20%" "\n"
else
  print "This is not a valid option, please run the program again"
end

print "Please enter the amount of total guests in your table, PLEASE DO NOT ENTER THINGS LIKE '2.5' GUESTS,
HALF HUMANS DO NOT EXIST ON PLANET EARTH!" "\n"
num_of_people = gets.chomp.to_f
# until num_of_people.is_a?(Fixnum) && num_of_people.is_a?(Float) do
#     puts "Invalid answer, please enter a correct number of people"
#     num_of_people = gets.chomp.to_f
# end

xy = bill * x
total_bill_with_tip = xy
totalbill_perperson = total_bill_with_tip / num_of_people
print "Your total bill with tip is: $#{total_bill_with_tip}" "\n"
print "Each person's portion is: $#{totalbill_perperson}" "\n"
