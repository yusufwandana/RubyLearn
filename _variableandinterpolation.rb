# INTERPOLATION [ masukan variabel ke dalam kata ]
# Autodetect tipe data
# Float lebih kuat daripada integer
# kalo mau hasilnya float salah satu isi variabel dikasih koma

a = 13
b = 10
puts "Penambahan  = #{a + b}"
puts "Pengurangan = #{a - b}"
puts "Pembagian   = #{a / b}"
puts "Perkalian   = #{a * b}"

c = 3.0
d = 2
puts "Hasilnya float #{c / d}"
# cek tipe data
puts a.class
puts 2.5.class
puts 'Cek'.class