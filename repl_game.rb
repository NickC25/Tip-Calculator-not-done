# puts 10.times.map{ 20 + Random.rand(20) }
r = Random.new
random_answer = r.rand(10...12)
# puts random_answer

puts "Welcome to the lottery game"
puts "Please choose a number between 10 and 20, you will only have ONE attempt. If you guess correctly on the FIRST attempt, you will
receive a $100 Amazon gift card. Good luck!" "\n"
# options={"10"=>10, "11"=>11, "12"=>12, "13"=>13, "14"=>14, "15"=>15, "16"=>16, "17"=>17, "18"=>18, "19"=>19, "3=20"=>20}
attempt = gets.chomp.to_i
# x = options[attempt]
# valid_answers = ["10","11","12","13","14","15","16","17","18","19","20"]

if attempt == random_answer then
  puts "Congrats!!! You have earn a $100 Amazon gift card" "\n"
  puts "Please provide us with the following information so we cand send it to your adress" "\n"
  puts "Please enter your first name"
  first_name = gets.chomp
  puts "Please enter your last name"
  last_name = gets.chomp
  puts "Adrress Line"
  address_line = gets.chomp
  puts "City"
  city = gets.chomp
  puts "State"
  state = gets.chomp
  puts "Zip Code"
  zip_code = gets.chomp
  puts "Phone number"
  phone_number = gets.chomp
  puts "Great! Please enter 'yes' if the following information is correct.If not, please enter 'no' '\n'
  Name: #{first_name} #{last_name} '\n'
  Full Adress: #{address_line}, #{city}, #{state}, #{zip_code} '\n'
  Phone number = #{phone_number} '\n' "
else
  puts "You lost!,please run the program again if you feel luck!"
end
