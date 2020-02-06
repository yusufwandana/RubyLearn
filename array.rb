# Array

array = [1,2,3,4,5]
puts array

mix_array = ['cupsky', 1, :titikdua]
puts mix_array

empty_array = []
puts empty_array

# Edit Array

# Ini integer
array = [1,2,3,4,5]
puts array[9] # Hasilnya akan undefined/null
array[3] = 8
puts array

# Ini untuk string
array2 = ['A', 'B', 'C']
array2[2] = '69'
puts array2

# Delete method di Array
arr = ['A', 'B', 'A', 'A', 'C', 'D' ]
arr.delete('A') # hapus semua a yang ada di array
puts arr
arr[0] = [] # hide index 0
puts arr
arr.delete_at(2)
puts arr
puts arr.length # hitung jumlah index array

# Delete if atau eliminasi item
arrr = [1,2,3,4,5,6,7,8]
arrr.delete_if do |nilai|
    nilai >= 5
end
puts arrr

# One line 
arrr2 = ['A', 'B', 'C', 'A', 'D']  
arrr2.delete_if { |item| item == 'A' }
puts arrr2

# Join 
# Mengubah array menjadi string
puts [1,2,3,4,5,6].join(',')
puts [1,2,3,4,5,6].join()
puts [1,2,3,4,5,6].join('A')

# Add array with push()
a = [1,2,4,3,5].push(3)
puts a.push(3) # bisa lebih dari satu (1,2,3,4)
a << 10 # simbol lain dari push
puts a
puts a.length

# Pop
# Menghapus array dari belakang
arr = [1,2,3,4]
arr.pop(1)
puts arr

# Unshift 
# Tambah dan hapus data dari depan
puts "------------"
arr = [1,2,3,4,5]
arr.unshift(0) # Tambah satu item (0)
arr.unshift(-1, -2) # Tambah dua item (-1 dan -2)
puts arr

puts "------------"
arr.shift(1) # Hapus item dari paling depan
puts arr

# Looping array
puts "------------"
arr = ['D', 'C', 'B', 'A', 'Z', 'N']
arr.each do |item|
    puts "Item : #{item}"
end