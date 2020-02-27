# 1.upto(100) do |x|
#     if x % 2 == 0
#         if x == 2
#             puts "#{x}"
#         else
#             a = x-1
#             if a / 3 == 1
#                 puts "#{a}"
#             elsif a % 3 > 0
#                 b = a
#                 if b % 5 == 0
#                 puts "#{a}"
#             end
                
#             end
#         end
#     end
# end

#cara1
# a = []
# 1.upto(100){ |x|
#     jumlah = 0 
#     1.upto(x) { |y|
#         mod = x % y
#         if mod == 0
#             jumlah += 1
#         end
#     }
#     if jumlah == 2
#         a.push(x)
#     end
# }

# puts a

# ngerti
a = []
1.upto(100){ |x|
    # puts "#{x}"
    jumlah = 0
    1.upto(x){ |y|
        mod = x % y
        if mod == 0
            jumlah += 1
        end
    }
    if jumlah == 2
        a.push(x)
    end
    # puts "#{x} #{jumlah}"
}
puts a

# #cara2
# 100.times do |angka|
#     a = 1
#     b = 0
#     while a <= angka do 
#         if angka % a == 0
#             b += 1
#         end
#         a += 1
#     end
#     if b == 2
#         puts angka
#     end 
# end