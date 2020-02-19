# Normal looping
10.times do
    puts 'Kuy'
end

# Time with index
10.times do |x|
    print x
end

# Time with gets
3.times do 
    print "Masukan kata : "
    a = gets.chomp
    puts a
end

# One line times
3.times do puts 'One line times' end
3.times {puts 'One line times'}
# Acending loop
1.upto(7) do |x|
    puts "Ascending #{x}"
end
# Descending
8.downto(2) do |x|
    puts "Descending #{x}"
end

# While
total = 0
while total < 5 do puts "total = #{total}" total += 1 end