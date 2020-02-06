# Array of Object variable with hash
# Hash pertama -> String element
hash = {'satu' => 1, 'dua' => 2, 'tiga' => 'Selamat'}
puts hash['tiga'] # Harus pake string
# Hash kedua -> Simbol element
hash = {:satu => 'Katakan', :dua => 'Salah', :tiga => 'Benar'}
puts hash[:satu] # Harus pake simbol
# Hash ketiga -> Default element
hash = {satu: 'Hello', dua: 'World', tiga: 'Home'}
puts hash[:satu] # Harus pakai :


puts "---------"

# Empty Hash
hash = {nama: 'User', job: 'Programmer', company: 'Random'}
puts hash[:salary]
puts hash.fetch(:nama)
puts hash.fetch(:salary, 30000)
puts hash = Hash.new('belum ada nilai')
puts hash[:nilai]
puts hash.fetch(:nilai, 100)
puts hash[:nilai]  = 100
puts hash[:salary] = 120

# Fetch = sama dengan push (menambahkan elemen)
# Ngisi hanya sementara
# Fetch Harus ada isinya
# Menambah dan menghapus elemen dalam hash

new_hash = Hash.new
new_hash[:nama] = 'User'
puts new_hash
new_hash['kelas'] = 'A-1'
puts new_hash['kelas']
# new_hash[id:] => error, harus simbol atau string 

puts "=============="
# DELETE()
# Kalo simbol harus simbol, string harus string
new_hash.delete(:nama)
puts new_hash

puts "=============="

# Looping dalam hash
nash = {nama: 'Uni', kelas: 'Soviet', tipe: 'Normal'}
nash.each{ |element, value|
    puts "#{element} ==> #{value}"
}

# 
nash.each{ |element|
    puts "#{element} item"
}

# hanya mengambil elment
nash.each_key{ |key| # Looping untuk key/element
    puts "Ambil #{key}"
}

puts "ambil #{nash.keys}" #ambil element jadikan array
puts "ambil #{nash.values}" #ambil nilai jadikan array