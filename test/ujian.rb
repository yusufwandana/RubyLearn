# hari = "Senin"
# puts hari.upcase!
# puts hari.reverse!

# inputan = gets.chomp
# puts "hari ini adalah hari #{hari}".gsub("hari", "#{inputan}")

# # While
# total = 0
# while total < 5 do 
#     puts "total = #{total}" 
#     total += 1 
# end


# def fungsi(*item) # bintang buat string, kalo gapake bintang masukin array
#     4.downto(0) do |x|
#         puts item[x]
#     end
# end
# array1 = []
# fungsi('Siapa', 'Rumah', 'Lokasi', 'Disana', 'Daerah')

# Set Array
# def setarray(a, b, c, d)
#     puts b, d, c, a
# end
# arr = ['hutan', 'gunung', 'pantai', 'jalanan']
# setarray(*arr)

# arr = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
# puts arr[14]
# puts arr[3] = "ABCD"
# puts arr[0] = 1.5
# arr.delete_at(9)
# arr[10] = "D"
# arr[11] = "D"
# arr[12] = "D"
# arr[13] = "D"
# puts "#{arr}".gsub('1', '')

arr = []
4.upto(9) do |x|
    arr.push x
end
puts arr

arr.delete_if do |nilai|
    nilai > 7
end
puts arr

puts arr.join("x")