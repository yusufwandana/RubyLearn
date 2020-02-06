puts "Test 1 Array"
puts "============"

# puts 'a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z'.split(',')

# puts 'a b c d e f g h i j k l m n o p q r s t u v w x y z'.split(' ')

#  3 kali looping yang di dalem nya ada inputan

arr = []
3.times do
    print "Masukan kata :"
    a = gets.chomp
    arr.push(a)
end
puts "========"
print arr

