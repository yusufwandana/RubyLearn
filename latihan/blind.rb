# 1
lemari = ["Buku", "Handphone", "Pensil", "Baju", "Flashdrive"]
tas = []

buku = lemari[0]
pensil = lemari[2]
flashdrive = lemari[4]

tas.push(buku, pensil, flashdrive)

lemari.delete_at(0)
lemari.delete_at(1)
lemari.delete_at(2)
puts "TES 1"
puts "===Lemari==="
puts "#{lemari}"
puts "===Tas==="
puts "#{tas}"

# 2
arr1 = [1,2,3,4,5,6,7,8,9]
arr2 = [1,7,6,0]
jumlahRotasi = 3

new_array = []

x = arr1.select { |item| item > arr1.length-jumlahRotasi }
2.downto(0){ |v|
    arr1.unshift x[v]
}

arr1.pop(3)

if arr2[0] < 7
    arr2.delete_at(0)
    arr2.push(1)
end

puts "#{arr1}"
puts "#{arr2}"

# 3
buah = {apel: 5000, nanas: 10000, semangka: 20000, jeruk: 4000, anggur: 8000}
puts "Masukan jumlah apel : "
japel = gets.to_i
puts "Masukan jumlah semangka :"
jsemangka = gets.to_i

hapel = buah[:apel] * japel
hsemangka = buah[:semangka] * jsemangka
harga = hapel + hsemangka

if harga > 50000
    puts ""
    puts "=== Buah yang Dibeli ==="
    puts "#{japel} apel  = #{hapel}"
    puts "#{jsemangka} semangka = #{hsemangka}"
    diskon = (harga * 10) / 100
    total = harga - diskon
    puts "Harga awal = #{harga}"
    puts "Diskon = #{diskon}"
    puts ""
    puts "== Total harga =="
    puts "#{total}"
else
    puts ""
    puts "=== Buah yang Dibeli ==="
    puts "#{japel} apel  = #{hapel}"
    puts "#{jsemangka} semangka = #{hsemangka}"
    puts ""
    puts "== Total harga =="
    puts "#{harga}"
end