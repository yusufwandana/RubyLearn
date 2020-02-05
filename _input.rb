print "Enter number(integer) : "
number = gets.to_i #to integer
print "Enter number(float) : "
number2 = gets.to_f #to float
puts "Please enter name.."
name = gets.chomp # to string
puts "Enter password.."
pass = gets.to_i 
puts "Your name is #{name}, your password #{pass}"
puts "Divition : #{number / number2}"