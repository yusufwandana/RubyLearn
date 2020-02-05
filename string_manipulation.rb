# Semua huruf kapital
a = "ini adalah huruf kapital"
puts a.upcase

# Semua huruf kecil
a = "INI ADALAH HURUF KECIL"
puts a.downcase

# Kapital diawal kalimat
a = "besar di awal kalimat"
puts a.capitalize

# Putar kata
puts 'kojor'.reverse

# Multiple manipulation
puts 'minuman'.reverse.capitalize

# Permanent manipulation
kata = 'Kata'
puts kata.reverse
puts kata.downcase
puts kata.upcase! #important
puts kata

# One replace and Global replace
# One replace => mengubah kata yang pertama saja
puts "kata kata mutiara dari katana".sub('kata', 'pisau')
# Global replace => mengubah keseluruhan kata
puts "kata kata mutiara dari katana".gsub('kata', 'pisau')
# Multiple replace
puts "kata kata mutiara dari katana".gsub('kata', 'hidup').sub('dari', 'sampai')

#Strip
# Menghilangkan spasi disamping kata
puts   "      password       a"
puts   "      password       a".strip
puts   "      password        ".strip

# Buat array dari string
print 'ini,adalah,kelas,program,ruby'.split(',')
print 'ini,adalah,kelas,program,ruby'.split('a')