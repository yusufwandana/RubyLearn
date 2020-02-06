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