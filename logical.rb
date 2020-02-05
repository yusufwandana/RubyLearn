# puts !true
# puts !!true
# puts !!!true
# puts !!!!true

# If, elseif and else
a = 'APA'
if a == 'APA'
    puts 'berhasil'
elsif a == 'AGA'
    puts 'OK'
else
    puts 'gagal'
end

# Opreator 
# puts true  || true
# puts true  || false
# puts false || true
# puts false || false

# One line if
# a == true ? puts 'a' : 'b'
puts 'Berhasil' if a == 'APA'

# Unless Conditional
# Unless selain dari APA
a = 'AGA'
puts 'Gagal' unless a == 'APA'

# If and Gets
print "Masukan nilai ujian Anda : "
nilai = gets.to_f

if nilai >= 80
    puts "Nilai A"
elsif nilai >= 70
    puts "Nilai B"
else
    puts "Nilai C"
end

# Logical condition in if
username = 'user'
password = 'rahasia'
if username == 'user' && password == 'rahasia'
    puts "Sukses"
else
    puts "Failed"
end

# If inside if
if username == 'user'
    if password == 'rahasia'
        puts 'Berhasil login'
    else
        puts 'Password salah'
    end
else
    puts "Username tidak ada"
end

# Case when
print "Silahkan masukan gender : "
gender = gets.chomp
case gender
when 'p'
    puts "Anda perempuan"
when 'l'
    puts "Anda laki-laki"
else
    puts "Silahkan melakukan test lab."
end