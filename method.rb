# Def
def halo
    puts 'Hello world'
end

halo

# Def with return
def hai
    return 'Saya ganteng' #maksa harus ini
    'Saya tampan'
end
puts hai

# Def return with manipulation
puts hai.reverse

# Parameter
def numeric(angka1, angka2)
    puts angka1 + angka2
end
numeric(3, 9)

# Default param
def message(name='user', email='username@gmail.com')
    puts "#{name} #{email}"
end
message
message('Syah')
message('adudu', 'adudu@gmail.com')

# Plain param
def kirim(name: 'Mou', email: 'username@gmail.com')
    puts "#{name} #{email}"
end
kirim
kirim(name: 'Adudu')
kirim(email: 'adudu@gmail.com')

# Variable as Method
cetak = Proc.new do 
    puts "Cetak kata"
end
cetak.call

cetak = Proc.new do |name, user|
    puts "#{name}#{user}"
end
cetak.call('Jamal', 'udin')
cetak['Jamal','udin']

pembagian = -> (angka1, angka2) do
    angka1/angka2
end
puts pembagian[12,3]

#Splat method
def menu(*item)
    puts item[0]
    puts item[1]
    puts item[2]
    puts item[3]
end

array1 = ['Siapa', 'Rumah', 'Lokasi', 'Disana']
menu(array1)

# Array param
def setarray(itemA, itemB, itemC)
    puts itemA
    puts itemB
    puts itemC
end
arr1 = ['Barang', 'Things', 'Goods']
setarray(*arr1)